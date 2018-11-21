
MEMORY
{
    FLASH_TEXT (rw) : ORIGIN = 0x00000000 + _flash_offset , LENGTH = 256K - _flash_offset /* .text */
    RAM (xrw)       : ORIGIN = 0x20000000 + _ram_offset,    LENGTH = 64K  - _ram_offset
}

_stack_size = 4K;
_flash_offset = DEFINED(_flash_offset) ? _flash_offset : 0;
_ram_offset   = DEFINED(_ram_offset)   ? _ram_offset   : 0;

INCLUDE "targets/arm.ld"
