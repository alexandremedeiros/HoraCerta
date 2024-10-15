// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

import "./Professor.sol";
import "./HoraCertaCoin.sol";


contract HoraCerta {

    address public tokenDePagamento;
    mapping(address => Professor) public professores;

    event ProfessorRegistrado(address, Professor);
    event ProfessorPago(address, uint);
    error HoraInvalida();

    constructor() {
        HoraCertaCoin _tokenDePagamento = new HoraCertaCoin(address(this));
        _tokenDePagamento.mint(address(this), 1000000 * 10e18);
        tokenDePagamento = address(_tokenDePagamento);
    }

    function mint(uint256 _amount) public {
        HoraCertaCoin(tokenDePagamento).mint(address(this), _amount);
    }

    function registrarProfessor(address _profAddress, Professor memory _professor) public {
        professores[_profAddress] = _professor;

        emit ProfessorRegistrado(_profAddress, _professor);
    }

    function registrarHora(address _profAddress, int _horas) public {
        if (_horas < 0) {
            revert HoraInvalida();
        }

        professores[_profAddress].horasTrabalhadas += uint(_horas);
    }

    // Preciso converter para "WEI: 1000 * 10e18 = 100000000000000000
    function pagarProfessor(address _profAddress) public {
        Professor memory _professor = professores[_profAddress];
        uint _valor = _professor.horasTrabalhadas * _professor.horaAula * 10e18;

        IERC20(tokenDePagamento).transferFrom(address(this), _profAddress, _valor);
        emit ProfessorPago(_profAddress, _valor);
    }
    
}
