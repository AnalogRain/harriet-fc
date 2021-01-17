ADR MAX_BANKS $DFFE
ADR ENTRY_POINT $200

SET I               ; Disable interrupts while ROM is running
STR #4 MAX_BANKS    ; Store number of used banks (4) at $DFFE, for use by interrupt handler
CLR I               ; Reenable interrupts
JMP ENTRY_POINT     ; Go to start of user code
