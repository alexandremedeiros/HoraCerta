
# HoraCerta ⏰

## Descrição

**HoraCerta** é um contrato inteligente desenvolvido na blockchain Ethereum para facilitar o registro e pagamento de professores por meio do token personalizado **HoraCertaCoin (HCC)**, um token ERC20.

O contrato automatiza o processo de registro de professores, contabiliza horas trabalhadas e realiza o pagamento diretamente em **HCC**, garantindo transparência e segurança nas transações.

## Funcionalidades

- **Registro de Professores**: Professores podem ser registrados com suas informações, incluindo horas trabalhadas e valor da hora-aula.
- **Pagamento em HCC**: Professores são pagos automaticamente com base nas horas registradas, e o valor é transferido em tokens HCC.
- **Emissão de Tokens (Minting)**: O contrato permite a criação de novos tokens HCC para serem distribuídos entre os professores.

## Contratos Principais

- **HoraCerta.sol**: Contrato principal responsável pelo registro de professores, controle de horas e realização de pagamentos.
- **HoraCertaCoin.sol**: Implementação do token ERC20 personalizado **HoraCertaCoin (HCC)** utilizado para os pagamentos.

## Como Funciona

1. **Registro de Professores**: 
    - O contrato permite registrar os professores, armazenando informações como endereço e taxa por hora.
  
2. **Registro de Horas Trabalhadas**: 
    - Os administradores podem registrar as horas trabalhadas por cada professor.

3. **Pagamento**:
    - O contrato calcula o valor total baseado nas horas registradas e realiza a transferência do valor correspondente em **HCC** para o professor.

## Como Usar

### Requisitos

- [Node.js](https://nodejs.org/)
- [Hardhat](https://hardhat.org/)
- [OpenZeppelin Contracts](https://openzeppelin.com/contracts/)

### Instalação

1. Clone o repositório:

```bash
git clone git@github.com:alexandremedeiros/HoraCerta.git
```

2. Instale as dependências:

```bash
npm install
```

3. Compile os contratos:

```bash
npm run compile
```


### Deploy na Rede

1. Configure as variáveis de ambiente no arquivo `.env`:

```bash
INFURA_URL=<sua_infura_url>
SECRET=<sua_frase_mnemonica>
API_KEY=<sua_chave_etherscan>
```

2. Execute o deploy:

```bash
npm run deploy:prod
```

## Contato

Se tiver dúvidas ou sugestões, sinta-se à vontade para entrar em contato:

- LinkedIn: [Seu LinkedIn](https://www.linkedin.com/in/alexandre-medeiross/)
