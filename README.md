# Chainlink Automation Fundamentals with Foundry

## Quickstart

Follow the steps below to initialize this project after cloning the repository:

1.  Clone the repository:
    ```bash
    git clone https://github.com/your-username/chainlink-automation-foundry.git
    cd chainlink-automation-foundry
    ```

2.  Install dependencies:
    ```bash
    make install
    ```

3.  Compile the contracts:
    ```bash
    make build
    ```

4.  Run the tests:
    ```bash
    make test
    ```

5.  (Optional) Set up environment variables in a `.env` file for blockchain network integration (e.g., `SEPOLIA_RPC_URL`, `ACCOUNT`, `ETHERSCAN_API_KEY`).

## Summary

This project provides practical examples of how to implement **Chainlink Automation** using the Foundry framework. It explores different automation triggers, including **Time-Based (Custom Logic)** and **Log-Triggered** automation, demonstrating how to create smart contracts that can be reliably executed by the decentralized Chainlink network.

## Description

### Motivation
The purpose of this project is to offer clear and functional examples for developers starting with Chainlink Automation. It covers the fundamental patterns for creating "automation-compatible" contracts, which allows off-chain computation to be triggered by on-chain conditions in a decentralized and secure manner.

### Tools and Technologies
- **Foundry**: A framework for developing, testing, and deploying smart contracts.
- **Solidity**: The programming language for smart contracts.
- **Chainlink Automation**: For decentralized and reliable execution of smart contract functions.
- **OpenZeppelin Contracts**: For secure and standard contract implementations.

### Project Structure
The project is organized as follows:
- `src/`: Contains the smart contracts:
    - `TimeBased.sol`: A contract designed for **Time-Based Automation**. The execution is triggered by a time schedule (cron job) configured directly in the Chainlink Automation UI, without requiring on-chain checking logic.
    - `CustomLogic.sol`: Demonstrates **Custom Logic Automation**. It uses a programmable on-chain condition (`checkUpkeep`) to determine when the automation should run. While the example uses a time interval, any on-chain logic can be implemented here.
    - `log-trigger/LogTrigger.sol`: A contract that performs an action when it detects a specific event emitted on the blockchain.
    - `log-trigger/EventEmitter.sol`: A simple contract used to emit the event that `LogTrigger` listens for.
- `script/`: Scripts for deploying the contracts.
- `test/`: Contains test scripts to validate the functionality of the contracts.
- `foundry.toml`: Foundry configuration file.
- `Makefile`: Shortcuts for common development tasks.

### Development
1.  **Planning**: We defined the requirements to demonstrate different Chainlink Automation triggers:
    - A contract for simple time-based triggers configured off-chain (`TimeBased.sol`).
    - A contract for triggers based on custom on-chain logic (`CustomLogic.sol`).
    - A contract that runs in response to a specific on-chain event (log-triggered).

2.  **Contract Implementation**:
    - We developed `TimeBased.sol` for simple time-based automation managed by the Chainlink UI.
    - We developed `CustomLogic.sol` implementing `AutomationCompatibleInterface` to showcase triggers based on any programmable on-chain logic.
    - We developed `LogTrigger.sol` implementing `ILogAutomation` to react to events from `EventEmitter.sol`.

3.  **Testing**:
    - We wrote unit tests using Foundry to validate the logic of the contracts.

4.  **Deployment**:
    - We created scripts in `script/` to automate the deployment of each contract.

5.  **Documentation**:
    - We prepared this README to guide developers.
    - We added explanatory comments in the code.

This project is an excellent starting point for understanding and using Chainlink Automation in a practical scenario with Foundry.

## Foundry

**Foundry is a blazing fast, portable and modular toolkit for Ethereum application development written in Rust.**

Foundry consists of:

-   **Forge**: Ethereum testing framework (like Truffle, Hardhat and DappTools).
-   **Cast**: Swiss army knife for interacting with EVM smart contracts, sending transactions and getting chain data.
-   **Anvil**: Local Ethereum node, akin to Ganache, Hardhat Network.
-   **Chisel**: Fast, utilitarian, and verbose solidity REPL.

## Documentation

https://book.getfoundry.sh/

## Usage

### Build

```shell
$ forge build
```

### Test

```shell
$ forge test
```

### Format

```shell
$ forge fmt
```

### Gas Snapshots

```shell
$ forge snapshot
```

### Anvil

```shell
$ anvil
```

### Deploy

```shell
$ forge script script/DeployTimeBased.s.sol:DeployTimeBased --rpc-url <your_rpc_url> --private-key <your_private_key>
```

### Cast

```shell
$ cast <subcommand>
```

### Help

```shell
$ forge --help
$ anvil --help
$ cast --help
```

## Makefile Commands

This project uses a `Makefile` to simplify common tasks.

### Main Commands

-   **Set up the environment (install dependencies and compile):**
    ```shell
    make all
    ```
-   **Compile the contracts:**
    ```shell
    make build
    ```
-   **Run the tests:**
    ```shell
    make test
    ```
-   **Format the code:**
    ```shell
    make format
    ```
-   **Start a local node (Anvil):**
    ```shell
    make anvil
    ```

### Deployment Commands

To run the commands below, you can specify the network. The default is the local Anvil network. To use Sepolia, add `ARGS="--network sepolia"` to the end of the command.

-   **Deploy the `TimeBased` contract:**
    ```shell
    make deployTimeBased
    ```
-   **Deploy the `CustomLogic` contract:**
    ```shell
    make deployCustomLogic
    ```
-   **Deploy the `EventEmitter` contract:**
    ```shell
    make deployEventEmitter
    ```
-   **Deploy the `LogTrigger` contract:**
    ```shell
    make deployLogTrigger
    ```
-   **Example of usage with the Sepolia network:**
    ```shell
    make deployCustomLogic ARGS="--network sepolia"
    ```

---

# Chainlink Automation Fundamentals com Foundry

## Guia de Início Rápido

Siga os passos abaixo para inicializar este projeto após clonar o repositório:

1.  Clone o repositório:
    ```bash
    git clone https://github.com/seu-usuario/chainlink-automation-foundry.git
    cd chainlink-automation-foundry
    ```

2.  Instale as dependências:
    ```bash
    make install
    ```

3.  Compile os contratos:
    ```bash
    make build
    ```

4.  Execute os testes:
    ```bash
    make test
    ```

5.  (Opcional) Configure variáveis de ambiente em um arquivo `.env` para integração com redes blockchain (ex: `SEPOLIA_RPC_URL`, `ACCOUNT`, `ETHERSCAN_API_KEY`).

## Resumo

Este projeto fornece exemplos práticos de como implementar a **Chainlink Automation** utilizando o framework Foundry. Ele explora diferentes gatilhos de automação, incluindo **Baseado em Tempo (Lógica Customizada)** e **Disparado por Logs (Log-Triggered)**, demonstrando como criar contratos inteligentes que podem ser executados de forma confiável pela rede descentralizada da Chainlink.

## Descrição

### Motivação
O propósito deste projeto é oferecer exemplos claros e funcionais para desenvolvedores que estão começando com a Chainlink Automation. Ele cobre os padrões fundamentais para criar contratos "compatíveis com automação", o que permite que a computação off-chain seja acionada por condições on-chain de maneira descentralizada e segura.

### Ferramentas e Tecnologias
- **Foundry**: Framework para desenvolvimento, teste e implantação de contratos inteligentes.
- **Solidity**: Linguagem de programação para contratos inteligentes.
- **Chainlink Automation**: Para execução descentralizada e confiável de funções de contratos inteligentes.
- **OpenZeppelin Contracts**: Para implementações seguras e padronizadas de contratos.

### Estrutura do Projeto
O projeto está organizado da seguinte forma:
- `src/`: Contém os contratos inteligentes:
    - `TimeBased.sol`: Um contrato projetado para **Automação Baseada em Tempo**. A execução é acionada por um agendamento de tempo (cron job) configurado diretamente na interface de usuário da Chainlink Automation, sem a necessidade de lógica de verificação on-chain.
    - `CustomLogic.sol`: Demonstra a **Automação por Lógica Customizada**. Ele usa uma condição programável on-chain (`checkUpkeep`) para determinar quando a automação deve ser executada. Embora o exemplo utilize um intervalo de tempo, qualquer lógica on-chain pode ser implementada aqui.
    - `log-trigger/LogTrigger.sol`: Um contrato que executa uma ação ao detectar um evento específico emitido na blockchain.
    - `log-trigger/EventEmitter.sol`: Um contrato simples usado para emitir o evento que o `LogTrigger` escuta.
- `script/`: Scripts para a implantação dos contratos.
- `test/`: Contém os scripts de teste para validar a funcionalidade dos contratos.
- `foundry.toml`: Arquivo de configuração do Foundry.
- `Makefile`: Atalhos para tarefas comuns de desenvolvimento.

### Desenvolvimento
1.  **Planejamento**: Definimos os requisitos para demonstrar diferentes gatilhos da Chainlink Automation:
    - Um contrato para gatilhos simples baseados em tempo, configurados off-chain (`TimeBased.sol`).
    - Um contrato para gatilhos baseados em lógica customizada on-chain (`CustomLogic.sol`).
    - Um contrato que executa em resposta a um evento on-chain específico (disparado por log).

2.  **Implementação dos Contratos**:
    - Desenvolvemos o `TimeBased.sol` para automação simples baseada em tempo, gerenciada pela UI da Chainlink.
    - Desenvolvemos o `CustomLogic.sol` implementando a `AutomationCompatibleInterface` para demonstrar gatilhos baseados em qualquer lógica programável on-chain.
    - Desenvolvemos o `LogTrigger.sol` implementando a `ILogAutomation` para reagir a eventos do `EventEmitter.sol`.

3.  **Testes**:
    - Escrevemos testes unitários utilizando Foundry para validar a lógica dos contratos.

4.  **Implantação**:
    - Criamos scripts em `script/` para automatizar o deploy de cada contrato.

5.  **Documentação**:
    - Elaboramos este README para orientar desenvolvedores.
    - Adicionamos comentários explicativos no código.

Este projeto é um excelente ponto de partida para entender e utilizar a Chainlink Automation em um cenário prático com o Foundry.

## Foundry

**Foundry is a blazing fast, portable and modular toolkit for Ethereum application development written in Rust.**

Foundry consiste em:

-   **Forge**: Framework de testes para Ethereum (como Truffle, Hardhat e DappTools).
-   **Cast**: Canivete suíço para interagir com contratos inteligentes EVM, enviar transações e obter dados da blockchain.
-   **Anvil**: Nó local Ethereum, semelhante ao Ganache, Hardhat Network.
-   **Chisel**: REPL Solidity rápido, utilitário e verboso.

## Documentação

https://book.getfoundry.sh/

## Uso

### Compilar

```shell
$ forge build
```

### Testar

```shell
$ forge test
```

### Formatar

```shell
$ forge fmt
```

### Snapshots de Gás

```shell
$ forge snapshot
```

### Anvil

```shell
$ anvil
```

### Deploy

```shell
$ forge script script/DeployTimeBased.s.sol:DeployTimeBased --rpc-url <sua_rpc_url> --private-key <sua_private_key>
```

### Cast

```shell
$ cast <subcomando>
```

### Ajuda

```shell
$ forge --help
$ anvil --help
$ cast --help
```

## Comandos do Makefile

Este projeto utiliza um `Makefile` para simplificar as tarefas comuns.

### Comandos Principais

-   **Preparar o ambiente (instalar dependências e compilar):**
    ```shell
    make all
    ```
-   **Compilar os contratos:**
    ```shell
    make build
    ```
-   **Executar os testes:**
    ```shell
    make test
    ```
-   **Formatar o código:**
    ```shell
    make format
    ```
-   **Iniciar um nó local (Anvil):**
    ```shell
    make anvil
    ```

### Comandos de Deploy

Para executar os comandos abaixo, você pode especificar a rede. O padrão é a rede local Anvil. Para usar a Sepolia, adicione `ARGS="--network sepolia"` ao final do comando.

-   **Fazer deploy do contrato `TimeBased`:**
    ```shell
    make deployTimeBased
    ```
-   **Fazer deploy do contrato `CustomLogic`:**
    ```shell
    make deployCustomLogic
    ```
-   **Fazer deploy do contrato `EventEmitter`:**
    ```shell
    make deployEventEmitter
    ```
-   **Fazer deploy do contrato `LogTrigger`:**
    ```shell
    make deployLogTrigger
    ```
-   **Exemplo de uso com a rede Sepolia:**
    ```shell
    make deployCustomLogic ARGS="--network sepolia"
    ```
