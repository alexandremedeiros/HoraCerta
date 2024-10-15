
# HoraCerta ⏰

## Descrição

**HoraCerta** é um contrato inteligente desenvolvido na blockchain Ethereum para facilitar o registro e pagamento de professores por meio do token personalizado **HoraCertaCoin (HCC)**, um token ERC20.

O contrato automatiza o processo de registro de professores, contabiliza horas trabalhadas e realiza o pagamento diretamente em **HCC**, garantindo transparência e segurança nas transações.

## Funcionalidades

- **Registro de Professores**: Professores podem ser registrados com suas informações, incluindo horas trabalhadas e valor da hora-aula.
- **Pagamento em HCC**: Professores são pagos automaticamente com base nas horas registradas, e o valor é transferido em tokens HCC.
- **Emissão de Tokens (Minting)**: O contrato permite a criação de novos tokens HCC para serem distribuídos entre os professores.
- **Controle de Royalties**: Com um percentual ajustável, o contrato permite a cobrança de royalties sobre transações de NFTs relacionadas.

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
git clone https://github.com/seu-usuario/hora-certa.git
cd hora-certa
```

2. Instale as dependências:

```bash
npm install
```

3. Compile os contratos:

```bash
npx hardhat compile
```

4. Execute os testes:

```bash
npx hardhat test
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
npx hardhat run scripts/deploy.js --network sepolia
```

## Interação com o Contrato

Para interagir com o contrato após o deploy, utilize o script abaixo:

```bash
npx hardhat console --network sepolia
```

Exemplo para registrar um professor:

```js
const horaCerta = await ethers.getContractAt("HoraCerta", "<endereço do contrato>");
await horaCerta.registrarProfessor("<endereço do professor>", { /* dados do professor */ });
```

## Licença

Este projeto está licenciado sob a licença MIT - veja o arquivo [LICENSE](LICENSE) para mais detalhes.

---

## Contato

Se tiver dúvidas ou sugestões, sinta-se à vontade para entrar em contato:

- LinkedIn: [Seu LinkedIn](https://www.linkedin.com/in/seu-perfil/)
- Email: [seuemail@exemplo.com](mailto:seuemail@exemplo.com)
# HoraCerta
