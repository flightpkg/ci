curl -f https://get.pnpm.io/v6.16.js | node - add --global @pnpm/exe
pnpm i --no-frozen-lockfile && pnpm link --dir ./pnpm/dev -g && pnpm run compile
