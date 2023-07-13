grep "pnpm-lock.yaml" pnpm -lr | xargs sed -i 's/pnpm-lock.yaml/flightjs-lock.yaml/g'
grep "pnpm" pnpm -lr | xargs sed -i 's/pnpm/flightjs/g'
grep "@flightjs" pnpm -lr | xargs sed -i 's/@flightjs/@pnpm/g'

mv pnpm/src/pnpm.ts pnpm/src/flightjs.ts

grep "https://github.com/flightjs/flightjs" pnpm -lr | xargs sed -i 's/https:\/\/github.com\/flightjs\/flightjs/https:\/\/github.com\/flightpkg\/javascript/g'

git add -A
git commit -m "chore(ci): apply flightjs branding" --no-verify
git push --set-upstream https://github.com/flightpkg/javascript.git main --force
