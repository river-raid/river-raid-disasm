document.addEventListener('DOMContentLoaded', function () {

  /* ── Disassembly row-group hover ─────────────────────────────── */

  document.querySelectorAll('td.comment-1[rowspan]').forEach(function (cell) {
    var rowspan = parseInt(cell.getAttribute('rowspan'), 10);

    var rows = [];
    var row = cell.parentElement;
    for (var i = 0; i < rowspan; i++) {
      if (row) { rows.push(row); row = row.nextElementSibling; }
    }

    function on()  { rows.forEach(function (r) { r.classList.add('asm-group-hover'); }); }
    function off() { rows.forEach(function (r) { r.classList.remove('asm-group-hover'); }); }

    rows.forEach(function (r) {
      r.addEventListener('mouseenter', on);
      r.addEventListener('mouseleave', off);
    });
  });

  /* ── Z80 syntax highlighting ─────────────────────────────────── */

  if (typeof hljs === 'undefined') return;

  hljs.registerLanguage('z80', function () {
    return {
      case_insensitive: false,
      keywords: {
        keyword: [
          'LD', 'LDD', 'LDI', 'LDIR', 'LDDR',
          'PUSH', 'POP', 'EX', 'EXX',
          'ADD', 'ADC', 'SUB', 'SBC', 'AND', 'OR', 'XOR', 'CP',
          'INC', 'DEC', 'DAA', 'CPL', 'NEG', 'CCF', 'SCF',
          'NOP', 'HALT', 'DI', 'EI', 'IM',
          'RLCA', 'RRCA', 'RLA', 'RRA',
          'RLC', 'RRC', 'RL', 'RR', 'SLA', 'SRA', 'SRL', 'SLL',
          'BIT', 'SET', 'RES',
          'CALL', 'RET', 'RETI', 'RETN', 'JP', 'JR', 'DJNZ', 'RST',
          'CPI', 'CPD', 'CPIR', 'CPDR',
          'INI', 'IND', 'INIR', 'INDR',
          'OUTI', 'OUTD', 'OTIR', 'OTDR',
          'IN', 'OUT',
          'DEFB', 'DEFW', 'DEFM', 'DEFS', 'EQU', 'ORG'
        ],
        built_in: [
          'A', 'B', 'C', 'D', 'E', 'H', 'L', 'I', 'R',
          'AF', 'BC', 'DE', 'HL', 'IX', 'IY', 'SP', 'PC',
          'IXH', 'IXL', 'IYH', 'IYL',
          'NZ', 'Z', 'NC', 'PO', 'PE', 'P', 'M'
        ]
      },
      contains: [
        { className: 'number',  begin: /\$[0-9A-Fa-f]+/ },
        { className: 'number',  begin: /%[01]+/ },
        { className: 'number',  begin: /\b[0-9]+\b/ },
        { className: 'string',  begin: '"', end: '"' },
        { className: 'comment', begin: /;/, end: /$/ }
      ]
    };
  });

  document.querySelectorAll('td.instruction').forEach(function (cell) {
    var html = '';
    cell.childNodes.forEach(function (node) {
      if (node.nodeType === Node.TEXT_NODE) {
        html += hljs.highlight(node.textContent, { language: 'z80', ignoreIllegals: true }).value;
      } else {
        html += node.outerHTML;
      }
    });
    cell.innerHTML = html;
  });

});
