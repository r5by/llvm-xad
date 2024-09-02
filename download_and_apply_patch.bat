@echo off
SET "REPO_URL=https://github.com/llvm/llvm-project.git"
SET "COMMIT_HASH=6009708b4367"
SET "PATCH_FILE=update_for_xad.patch"

echo Cloning LLVM Project specific revision...
git clone %REPO_URL% llvm-project
cd llvm-project
git checkout %COMMIT_HASH%

echo Applying patch...
git apply ../%PATCH_FILE%

echo Patch applied successfully.
pause

