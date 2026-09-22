FROM fedora:32

LABEL maintainer="German Zaletin"
LABEL description="LaTeX resume builder"

# Используем архивные репозитории Fedora 32
RUN sed -i 's/^metalink=/#metalink=/g' /etc/yum.repos.d/fedora*.repo && \
    sed -i 's/^#baseurl=/baseurl=/g' /etc/yum.repos.d/fedora*.repo && \
    sed -i 's|download.example/pub/fedora/linux|archives.fedoraproject.org/pub/archive/fedora/linux|g' /etc/yum.repos.d/fedora*.repo && \
    sed -i 's|download.fedoraproject.org/pub/fedora/linux|archives.fedoraproject.org/pub/archive/fedora/linux|g' /etc/yum.repos.d/fedora*.repo

# Устанавливаем LaTeX и необходимые пакеты
RUN dnf install -y \
    texlive-scheme-basic \
    texlive-collection-latexrecommended \
    texlive-collection-fontsrecommended \
    texlive-collection-latexextra \
    texlive-collection-fontsextra \
    texlive-collection-pictures \
    texlive-collection-science \
    texlive-collection-langcyrillic \
    && dnf clean all

WORKDIR /app

# Копируем исходники резюме
COPY CV/ /app/CV/

# Копируем скрипт сборки
COPY build.sh /app/build.sh

RUN chmod +x /app/build.sh

# Автоматически собираем PDF при запуске контейнера
ENTRYPOINT ["/app/build.sh"]
