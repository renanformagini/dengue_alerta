# Use a imagem oficial do Maven com Java 21
FROM maven:3-amazoncorretto-21

# Defina o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copie o arquivo pom.xml e outros arquivos necessários para a raiz do projeto
COPY pom.xml ./
COPY src ./src

# Execute o comando de build do Maven
RUN mvn clean install

# Comando padrão para iniciar a aplicação (pode ser ajustado conforme necessário)
CMD ["java", "-jar", "target/denguealerta-0.0.1-SNAPSHOT.jar"]