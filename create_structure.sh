#!/bin/bash

# Function to create directories
create_directories() {
  while [ "$#" -gt 0 ]; do
    mkdir -p "$1"
    shift
  done
}

# Frontend directories
create_directories \
  frontend/public/assets \
  frontend/src/components/common \
  frontend/src/components/StudentComponents \
  frontend/src/components/ProfessorComponents \
  frontend/src/components/ManagerComponents \
  frontend/src/pages \
  frontend/src/services \
  frontend/src/utils \
  frontend/src/app/actions \
  frontend/src/app/reducers \
  frontend/src/store \
  frontend/styles

# Touch files
touch \
  frontend/public/index.html \
  frontend/src/components/common/.gitkeep \
  frontend/src/components/StudentComponents/.gitkeep \
  frontend/src/components/ProfessorComponents/.gitkeep \
  frontend/src/components/ManagerComponents/.gitkeep \
  frontend/src/pages/StudentPage.js \
  frontend/src/pages/ProfessorPage.js \
  frontend/src/pages/ManagerPage.js \
  frontend/src/services/studentService.js \
  frontend/src/services/professorService.js \
  frontend/src/services/managerService.js \
  frontend/src/utils/.gitkeep \
  frontend/src/app/App.js \
  frontend/src/app/Router.js \
  frontend/src/store/store.js \
  frontend/index.js \
  frontend/styles/main.scss \
  frontend/package.json \
  frontend/package-lock.json \
  frontend/.gitignore \
  frontend/.env \
  frontend/README.md

# Backend directories
create_directories \
  backend/src/controllers \
  backend/src/models \
  backend/src/routes \
  backend/src/services \
  backend/src/utils \
  backend/src/middleware \
  backend/src/config \
  backend/tests \
  backend/scripts

# Touch files
touch \
  backend/src/controllers/userController.js \
  backend/src/controllers/scheduleController.js \
  backend/src/models/.gitkeep \
  backend/src/routes/.gitkeep \
  backend/src/services/dynamoService.js \
  backend/src/services/s3Service.js \
  backend/src/services/lambdaService.js \
  backend/src/utils/.gitkeep \
  backend/src/middleware/.gitkeep \
  backend/src/config/.gitkeep \
  backend/src/app.js \
  backend/tests/.gitkeep \
  backend/scripts/.gitkeep \
  backend/package.json \
  backend/package-lock.json \
  backend/.env \
  backend/.gitignore \
  backend/README.md

echo "Directory structure created successfully!"
