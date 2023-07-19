*** Settings ***

Documentation       Cenários de testes de atualizacao de tarefas

Resource            ../../resources/base.resource

Test Setup          Start Session
Test Teardown       Take Screenshot

*** Test Cases ***

Deve poder marcar uma tarefa como concluida
    
    ${data}        Get fixture    tasks    done

    Reset user from database      ${data}[user]

    Create a new task from API    ${data}

        Do login                  ${data}[user]

    Mark task as completed        ${data}[task][name]
    Task should be completed      ${data}[task][name]