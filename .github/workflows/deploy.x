   name: Deploy to Render

   on:
     push:
       branches:
         - main

   jobs:
     test-and-deploy:
       runs-on: ubuntu-latest

       steps:
       - name: Validacion previa
         run: find . 
            
       - name: Checkout code
         uses: actions/checkout@v3


       - name: Validacion previa
         run: find . 
            
       - name: Set up Python
         uses: actions/setup-python@v4
         with:
           python-version: '3.x'

       - name: Install pytest
         run: pip install pytest

       - name: Deploy to Render
         if: success()
         env:
         run: |
           curl -X POST "https://api.render.com/deploy/srv-cslpb6u8ii6s73apnav0?key=IAdywsfiF3s" -H "Content-Type: application/json" -d '{}'
