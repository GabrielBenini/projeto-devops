# Usa a imagem oficial do Node.js como base
FROM node:18

# Cria e define o diretório de trabalho no container
WORKDIR /app

# Copia o package.json e package-lock.json (se existir)
COPY package*.json ./

# Instala as dependências
RUN npm install

# Copia o restante do código da aplicação
COPY . .

# Expõe a porta que a aplicação irá usar
EXPOSE 3000

# Comando para iniciar a aplicação
CMD ["npm", "start"]
