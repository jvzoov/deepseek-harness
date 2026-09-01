FROM node:24-slim

# Install pnpm
RUN npm install -g pnpm

WORKDIR /app

# Copy and install
COPY . .
RUN pnpm install
RUN pnpm run build

EXPOSE 3080

CMD ["pnpm", "dsh", "web", "--host", "0.0.0.0", "--no-open"]
