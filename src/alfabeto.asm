include msx.asm

cseg
public LDAlfabeto
extrn BIOS
LDAlfabeto:
    ld hl,ALFABETO+7
    ld de,0800h
    ld bc,0800h
    ld ix,LDIRVM
    call BIOS
    ret


dseg
ALFABETO:

    db 0FEh, 000h, 092h, 0FFh, 099h, 000h, 092h, 018h, 018h, 018h, 0F8h, 018h
    db 018h, 018h, 018h, 000h, 000h, 000h, 0F0h, 010h, 018h, 018h, 018h, 018h
    db 018h, 018h, 018h, 018h, 018h, 018h, 018h, 010h, 010h, 010h, 01Fh, 007h
    db 000h, 000h, 000h, 000h, 000h, 000h, 0FFh, 0FFh, 000h, 000h, 000h, 018h
    db 018h, 018h, 0F8h, 0F8h, 000h, 000h, 000h, 000h, 0FFh, 0FFh, 0FFh, 0FFh
    db 0FFh, 000h, 000h, 000h, 0FFh, 000h, 0FFh, 000h, 0FFh, 000h, 000h, 078h
    db 084h, 0B4h, 0A4h, 0B4h, 084h, 078h, 000h, 0C0h, 0E4h, 0FCh, 0D8h, 0C0h
    db 0C0h, 0C0h, 0C0h, 0CCh, 0DCh, 0D8h, 0DCh, 0CCh, 0C0h, 0FCh, 0FCh, 0FCh
    db 0FCh, 004h, 0C0h, 0E0h, 064h, 0ECh, 0CCh, 00Ch, 09Ch, 0F8h, 0F0h, 0F0h
    db 0F8h, 09Ch, 00Ch, 000h, 0F8h, 088h, 088h, 088h, 088h, 0F8h, 000h, 004h
    db 0FCh, 08Ch, 0D8h, 0F8h, 0A8h, 0F8h, 000h, 000h, 07Eh, 07Eh, 07Eh, 07Eh
    db 07Eh, 07Eh, 000h, 000h, 07Eh, 042h, 042h, 042h, 042h, 07Eh, 000h, 010h
    db 010h, 010h, 0FFh, 000h, 000h, 000h, 000h, 000h, 000h, 000h, 0FFh, 010h
    db 010h, 010h, 010h, 010h, 010h, 010h, 0F0h, 010h, 010h, 010h, 010h, 010h
    db 010h, 010h, 01Fh, 010h, 010h, 010h, 010h, 010h, 010h, 010h, 0FFh, 010h
    db 010h, 010h, 010h, 010h, 010h, 010h, 010h, 010h, 010h, 010h, 010h, 000h
    db 000h, 000h, 0FFh, 000h, 000h, 000h, 000h, 000h, 000h, 000h, 01Fh, 010h
    db 010h, 010h, 010h, 000h, 000h, 000h, 0F0h, 010h, 010h, 010h, 010h, 010h
    db 010h, 010h, 01Fh, 000h, 000h, 000h, 000h, 010h, 010h, 010h, 0F0h, 000h
    db 000h, 000h, 000h, 081h, 042h, 024h, 018h, 018h, 024h, 042h, 081h, 001h
    db 002h, 004h, 008h, 010h, 020h, 040h, 080h, 080h, 040h, 020h, 010h, 008h
    db 004h, 002h, 001h, 000h, 010h, 010h, 0FFh, 010h, 010h, 000h, 000h, 000h
    db 000h, 000h, 000h, 000h, 000h, 000h, 000h, 000h, 030h, 030h, 030h, 030h
    db 000h, 030h, 000h, 000h, 0A0h, 0A0h, 0A0h, 000h, 000h, 000h, 000h, 000h
    db 050h, 0F8h, 050h, 050h, 0F8h, 050h, 000h, 020h, 0F8h, 0A0h, 0F8h, 028h
    db 0F8h, 020h, 000h, 000h, 0C4h, 0C8h, 010h, 020h, 04Ch, 08Ch, 000h, 000h
    db 040h, 0A0h, 048h, 0A0h, 098h, 060h, 000h, 000h, 020h, 060h, 0C0h, 000h
    db 000h, 000h, 000h, 000h, 060h, 0C0h, 0C0h, 0C0h, 0C0h, 060h, 000h, 000h
    db 0C0h, 060h, 060h, 060h, 060h, 0C0h, 000h, 000h, 020h, 0A8h, 070h, 070h
    db 0A8h, 020h, 000h, 000h, 000h, 030h, 030h, 0FCh, 030h, 030h, 000h, 000h
    db 000h, 000h, 000h, 000h, 060h, 060h, 0C0h, 000h, 000h, 000h, 000h, 0F0h
    db 000h, 000h, 000h, 000h, 000h, 000h, 000h, 000h, 0C0h, 0C0h, 000h, 000h
    db 000h, 00Ch, 018h, 030h, 060h, 0C0h, 000h, 000h, 0F8h, 098h, 0B8h, 0D8h
    db 098h, 0F8h, 000h, 000h, 030h, 070h, 030h, 030h, 030h, 0F8h, 000h, 000h
    db 0F8h, 0D8h, 018h, 0F8h, 0C0h, 0F8h, 000h, 000h, 0F8h, 0D8h, 030h, 018h
    db 0D8h, 0F8h, 000h, 000h, 030h, 070h, 0B0h, 0F8h, 030h, 030h, 000h, 000h
    db 0F8h, 0C0h, 0F8h, 018h, 0D8h, 0F8h, 000h, 000h, 0F8h, 0C0h, 0F8h, 0D8h
    db 0D8h, 0F8h, 000h, 000h, 0F8h, 0D8h, 030h, 030h, 030h, 030h, 000h, 000h
    db 0F8h, 0D8h, 070h, 0D8h, 0D8h, 0F8h, 000h, 000h, 0F8h, 0D8h, 0D8h, 0F8h
    db 018h, 0F8h, 000h, 000h, 000h, 000h, 0C0h, 000h, 0C0h, 000h, 000h, 000h
    db 000h, 000h, 0C0h, 000h, 0C0h, 040h, 080h, 000h, 038h, 070h, 0E0h, 0E0h
    db 070h, 038h, 000h, 000h, 000h, 000h, 0F8h, 000h, 0F8h, 000h, 000h, 000h
    db 0E0h, 070h, 038h, 038h, 070h, 0E0h, 000h, 000h, 0F8h, 0D8h, 030h, 030h
    db 000h, 030h, 000h, 000h, 0F8h, 088h, 008h, 068h, 0A8h, 0F8h, 000h, 000h
    db 0F8h, 0D8h, 0D8h, 0F8h, 0D8h, 0D8h, 000h, 000h, 0F8h, 0D8h, 0F0h, 0D8h
    db 0D8h, 0F8h, 000h, 000h, 0F8h, 0D8h, 0C0h, 0C0h, 0D8h, 0F8h, 000h, 000h
    db 0F0h, 0D8h, 0D8h, 0D8h, 0D8h, 0F0h, 000h, 000h, 0F8h, 0C0h, 0F0h, 0C0h
    db 0C0h, 0F8h, 000h, 000h, 0F8h, 0C0h, 0F0h, 0C0h, 0C0h, 0C0h, 000h, 000h
    db 0F8h, 0D8h, 0C0h, 0D8h, 0D8h, 0F8h, 000h, 000h, 0D8h, 0D8h, 0D8h, 0F8h
    db 0D8h, 0D8h, 000h, 000h, 0F0h, 060h, 060h, 060h, 060h, 0F0h, 000h, 000h
    db 078h, 030h, 030h, 0B0h, 0B0h, 0F0h, 000h, 000h, 0C8h, 0D8h, 0F0h, 0F0h
    db 0D8h, 0C8h, 000h, 000h, 0C0h, 0C0h, 0C0h, 0C0h, 0C0h, 0F8h, 000h, 000h
    db 0D8h, 0F8h, 0F8h, 0D8h, 0D8h, 0D8h, 000h, 000h, 0D8h, 0D8h, 0F8h, 0F8h
    db 0D8h, 0D8h, 000h, 000h, 0F8h, 0D8h, 0D8h, 0D8h, 0D8h, 0F8h, 000h, 000h
    db 0F8h, 0D8h, 0D8h, 0F8h, 0C0h, 0C0h, 000h, 000h, 0F8h, 0D8h, 0D8h, 0D8h
    db 0F8h, 0F8h, 000h, 000h, 0F8h, 0D8h, 0D8h, 0F8h, 0D0h, 0D8h, 000h, 000h
    db 0F8h, 0C0h, 0F8h, 018h, 018h, 0F8h, 000h, 000h, 0F0h, 060h, 060h, 060h
    db 060h, 060h, 000h, 000h, 0D8h, 0D8h, 0D8h, 0D8h, 0D8h, 0F8h, 000h, 000h
    db 0D8h, 0D8h, 0D8h, 070h, 070h, 020h, 000h, 000h, 0D8h, 0D8h, 0F8h, 0F8h
    db 0D8h, 088h, 000h, 000h, 0D8h, 0D8h, 070h, 070h, 0D8h, 0D8h, 000h, 000h
    db 0D8h, 0D8h, 070h, 020h, 020h, 020h, 000h, 000h, 0F8h, 018h, 030h, 060h
    db 0C0h, 0F8h, 000h, 000h, 0E0h, 0C0h, 0C0h, 0C0h, 0C0h, 0E0h, 000h, 000h
    db 000h, 0C0h, 060h, 030h, 018h, 00Ch, 000h, 000h, 0E0h, 060h, 060h, 060h
    db 060h, 0E0h, 000h, 040h, 060h, 070h, 078h, 078h, 070h, 060h, 040h, 000h
    db 000h, 000h, 000h, 000h, 000h, 0FCh, 000h, 000h, 080h, 0C0h, 060h, 000h
    db 000h, 000h, 000h, 000h, 000h, 0F8h, 018h, 0F8h, 0D8h, 0F8h, 000h, 000h
    db 0C0h, 0C0h, 0D8h, 0F8h, 0D8h, 0F8h, 000h, 000h, 000h, 0F8h, 0D8h, 0C0h
    db 0D8h, 0F8h, 000h, 000h, 018h, 018h, 0D8h, 0F8h, 0D8h, 0F8h, 000h, 000h
    db 000h, 0F8h, 0D8h, 0F8h, 0C0h, 0F8h, 000h, 000h, 078h, 068h, 060h, 0F8h
    db 060h, 060h, 000h, 000h, 000h, 0F8h, 0D8h, 0D8h, 0F8h, 018h, 078h, 000h
    db 0C0h, 0C0h, 0F8h, 0D8h, 0D8h, 0D8h, 000h, 000h, 060h, 000h, 0E0h, 060h
    db 060h, 0F0h, 000h, 000h, 018h, 000h, 038h, 018h, 018h, 0D8h, 0F8h, 000h
    db 0C0h, 0D8h, 0F0h, 0E0h, 0F0h, 0D8h, 000h, 000h, 0E0h, 060h, 060h, 060h
    db 060h, 0F0h, 000h, 000h, 000h, 0F0h, 0F8h, 0D8h, 0D8h, 0D8h, 000h, 000h
    db 000h, 0B8h, 0D8h, 0D8h, 0D8h, 0D8h, 000h, 000h, 000h, 0F8h, 0D8h, 0D8h
    db 0D8h, 0F8h, 000h, 000h, 000h, 0F8h, 0D8h, 0D8h, 0F8h, 0C0h, 0C0h, 000h
    db 000h, 0F8h, 0D8h, 0D8h, 0F8h, 018h, 018h, 000h, 000h, 0D8h, 0F8h, 0C0h
    db 0C0h, 0C0h, 000h, 000h, 000h, 0F8h, 0C0h, 0F8h, 018h, 0F8h, 000h, 000h
    db 060h, 0F0h, 060h, 060h, 068h, 078h, 000h, 000h, 000h, 0D8h, 0D8h, 0D8h
    db 0D8h, 0F8h, 000h, 000h, 000h, 0D8h, 0D8h, 0D8h, 070h, 020h, 000h, 000h
    db 000h, 0D8h, 0D8h, 0D8h, 0F8h, 0D8h, 000h, 000h, 000h, 0D8h, 070h, 020h
    db 070h, 0D8h, 000h, 000h, 000h, 0D8h, 0D8h, 0F8h, 0D8h, 018h, 078h, 000h
    db 000h, 0F8h, 018h, 030h, 060h, 0F8h, 000h, 0C3h, 0E7h, 0FFh, 0DBh, 0C3h
    db 0C3h, 0C3h, 0C3h, 03Fh, 07Fh, 060h, 07Ch, 03Eh, 006h, 0FEh, 0FCh, 0C3h
    db 0E7h, 07Eh, 03Ch, 03Ch, 07Eh, 0E7h, 0C3h, 07Ch, 044h, 028h, 010h, 028h
    db 044h, 07Ch, 000h, 000h, 000h, 000h, 000h, 000h, 000h, 000h, 000h, 000h
    db 020h, 060h, 0FCh, 0FCh, 060h, 020h, 000h, 000h, 010h, 018h, 0FCh, 0FCh
    db 018h, 010h, 000h, 000h, 030h, 078h, 0FCh, 030h, 030h, 030h, 000h, 000h
    db 030h, 030h, 030h, 0FCh, 078h, 030h, 000h, 0E0h, 080h, 0C0h, 098h, 088h
    db 008h, 008h, 01Ch, 0E0h, 080h, 0C0h, 098h, 084h, 008h, 010h, 01Ch, 0E0h
    db 080h, 0C0h, 09Ch, 084h, 008h, 004h, 01Ch, 0E0h, 080h, 0C0h, 094h, 094h
    db 01Ch, 004h, 004h, 0E0h, 080h, 0C0h, 09Ch, 090h, 018h, 004h, 018h, 000h
    db 07Eh, 040h, 07Ch, 060h, 060h, 07Eh, 000h, 000h, 004h, 004h, 07Ch, 044h
    db 064h, 07Ch, 000h, 000h, 010h, 000h, 010h, 010h, 018h, 018h, 000h, 000h
    db 010h, 038h, 010h, 010h, 018h, 018h, 000h, 000h, 000h, 07Ch, 044h, 044h
    db 064h, 07Ch, 000h, 000h, 000h, 03Ch, 020h, 030h, 030h, 030h, 000h, 000h
    db 000h, 000h, 000h, 000h, 000h, 000h, 000h, 000h, 004h, 004h, 07Ch, 044h
    db 064h, 07Ch, 000h, 000h, 000h, 07Ch, 044h, 07Ch, 060h, 07Ch, 000h, 000h
    db 000h, 000h, 000h, 000h, 000h, 000h, 000h, 000h, 03Ch, 024h, 024h, 07Eh
    db 062h, 062h, 000h, 000h, 010h, 010h, 018h, 018h, 018h, 018h, 000h, 000h
    db 01Ch, 010h, 038h, 010h, 018h, 018h, 000h, 000h, 000h, 07Ch, 004h, 07Ch
    db 064h, 07Ch, 000h, 000h, 020h, 020h, 03Eh, 022h, 032h, 03Eh, 000h, 000h
    db 000h, 07Ch, 044h, 07Ch, 060h, 07Ch, 000h, 000h, 010h, 038h, 010h, 010h
    db 018h, 018h, 000h, 000h, 000h, 07Ch, 044h, 044h, 064h, 07Ch, 000h, 000h
    db 000h, 07Ch, 040h, 07Ch, 00Ch, 07Ch, 000h, 000h, 000h, 000h, 000h, 000h
    db 000h, 000h, 000h, 000h, 000h, 000h, 000h, 000h, 000h, 000h, 000h, 000h
    db 000h, 000h, 000h, 000h, 000h, 000h, 000h, 000h, 000h, 000h, 000h, 000h
    db 000h, 000h, 000h, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh
    db 0CFh, 0CFh, 0CFh, 0CFh, 0FFh, 0CFh, 0FFh, 0FFh, 05Fh, 05Fh, 05Fh, 0FFh
    db 0FFh, 0FFh, 0FFh, 0FFh, 0AFh, 007h, 0AFh, 0AFh, 007h, 0AFh, 0FFh, 0DFh
    db 007h, 05Fh, 007h, 0D7h, 007h, 0DFh, 0FFh, 0FFh, 03Bh, 037h, 0EFh, 0DFh
    db 0B3h, 073h, 0FFh, 0FFh, 0BFh, 05Fh, 0B7h, 05Fh, 067h, 09Fh, 0FFh, 0FFh
    db 0DFh, 09Fh, 03Fh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 09Fh, 03Fh, 03Fh, 03Fh
    db 03Fh, 09Fh, 0FFh, 0FFh, 03Fh, 09Fh, 09Fh, 09Fh, 09Fh, 03Fh, 0FFh, 0FFh
    db 0DFh, 057h, 08Fh, 08Fh, 057h, 0DFh, 0FFh, 0FFh, 0FFh, 0CFh, 0CFh, 003h
    db 0CFh, 0CFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 09Fh, 09Fh, 03Fh, 0FFh
    db 0FFh, 0FFh, 0FFh, 00Fh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh
    db 03Fh, 03Fh, 0FFh, 0FFh, 0FFh, 0F3h, 0E7h, 0CFh, 09Fh, 03Fh, 0FFh, 0FFh
    db 007h, 067h, 047h, 027h, 067h, 007h, 0FFh, 0FFh, 0CFh, 08Fh, 0CFh, 0CFh
    db 0CFh, 007h, 0FFh, 0FFh, 007h, 027h, 0E7h, 007h, 03Fh, 007h, 0FFh, 0FFh
    db 007h, 027h, 0CFh, 0E7h, 027h, 007h, 0FFh, 0FFh, 0CFh, 08Fh, 04Fh, 007h
    db 0CFh, 0CFh, 0FFh, 0FFh, 007h, 03Fh, 007h, 0E7h, 027h, 007h, 0FFh, 0FFh
    db 007h, 03Fh, 007h, 027h, 027h, 007h, 0FFh, 0FFh, 007h, 027h, 0CFh, 0CFh
    db 0CFh, 0CFh, 0FFh, 0FFh, 007h, 027h, 08Fh, 027h, 027h, 007h, 0FFh, 0FFh
    db 007h, 027h, 027h, 007h, 0E7h, 007h, 0FFh, 0FFh, 0FFh, 0FFh, 03Fh, 0FFh
    db 03Fh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 03Fh, 0FFh, 03Fh, 0BFh, 07Fh, 0FFh
    db 0C7h, 08Fh, 01Fh, 01Fh, 08Fh, 0C7h, 0FFh, 0FFh, 0FFh, 0FFh, 007h, 0FFh
    db 007h, 0FFh, 0FFh, 0FFh, 01Fh, 08Fh, 0C7h, 0C7h, 08Fh, 01Fh, 0FFh, 0FFh
    db 007h, 027h, 0CFh, 0CFh, 0FFh, 0CFh, 0FFh, 0FFh, 007h, 077h, 0F7h, 097h
    db 057h, 007h, 0FFh, 0FFh, 007h, 027h, 027h, 007h, 027h, 027h, 0FFh, 0FFh
    db 007h, 027h, 00Fh, 027h, 027h, 007h, 0FFh, 0FFh, 007h, 027h, 03Fh, 03Fh
    db 027h, 007h, 0FFh, 0FFh, 00Fh, 027h, 027h, 027h, 027h, 00Fh, 0FFh, 0FFh
    db 007h, 03Fh, 00Fh, 03Fh, 03Fh, 007h, 0FFh, 0FFh, 007h, 03Fh, 00Fh, 03Fh
    db 03Fh, 03Fh, 0FFh, 0FFh, 007h, 027h, 03Fh, 027h, 027h, 007h, 0FFh, 0FFh
    db 027h, 027h, 027h, 007h, 027h, 027h, 0FFh, 0FFh, 00Fh, 09Fh, 09Fh, 09Fh
    db 09Fh, 00Fh, 0FFh, 0FFh, 087h, 0CFh, 0CFh, 04Fh, 04Fh, 00Fh, 0FFh, 0FFh
    db 037h, 027h, 00Fh, 00Fh, 027h, 037h, 0FFh, 0FFh, 03Fh, 03Fh, 03Fh, 03Fh
    db 03Fh, 007h, 0FFh, 0FFh, 027h, 007h, 007h, 027h, 027h, 027h, 0FFh, 0FFh
    db 027h, 027h, 007h, 007h, 027h, 027h, 0FFh, 0FFh, 007h, 027h, 027h, 027h
    db 027h, 007h, 0FFh, 0FFh, 007h, 027h, 027h, 007h, 03Fh, 03Fh, 0FFh, 0FFh
    db 007h, 027h, 027h, 027h, 007h, 007h, 0FFh, 0FFh, 007h, 027h, 027h, 007h
    db 02Fh, 027h, 0FFh, 0FFh, 007h, 03Fh, 007h, 0E7h, 0E7h, 007h, 0FFh, 0FFh
    db 00Fh, 09Fh, 09Fh, 09Fh, 09Fh, 09Fh, 0FFh, 0FFh, 027h, 027h, 027h, 027h
    db 027h, 007h, 0FFh, 0FFh, 027h, 027h, 027h, 08Fh, 08Fh, 0DFh, 0FFh, 0FFh
    db 027h, 027h, 007h, 007h, 027h, 077h, 0FFh, 0FFh, 027h, 027h, 08Fh, 08Fh
    db 027h, 027h, 0FFh, 0FFh, 027h, 027h, 08Fh, 0DFh, 0DFh, 0DFh, 0FFh, 0FFh
    db 007h, 0E7h, 0CFh, 09Fh, 03Fh, 007h, 0FFh, 000h, 000h, 000h, 000h, 000h
    db 000h, 000h, 000h, 000h, 000h, 000h, 000h, 000h, 000h, 000h, 000h, 000h
    db 000h, 000h, 000h, 000h, 000h, 000h, 000h, 000h, 000h, 000h, 000h, 000h
    db 000h, 000h, 000h, 000h, 000h, 000h, 000h, 000h, 000h, 000h, 000h, 0FFh
    db 07Fh, 03Fh, 09Fh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 007h, 0E7h, 007h
    db 027h, 007h, 0FFh, 0FFh, 03Fh, 03Fh, 027h, 007h, 027h, 007h, 0FFh, 0FFh
    db 0FFh, 007h, 027h, 03Fh, 027h, 007h, 0FFh, 0FFh, 0E7h, 0E7h, 027h, 007h
    db 027h, 007h, 0FFh, 0FFh, 0FFh, 007h, 027h, 007h, 03Fh, 007h, 0FFh, 0FFh
    db 087h, 097h, 09Fh, 007h, 09Fh, 09Fh, 0FFh, 0FFh, 0FFh, 007h, 027h, 027h
    db 007h, 0E7h, 087h, 0FFh, 03Fh, 03Fh, 007h, 027h, 027h, 027h, 0FFh, 0FFh
    db 09Fh, 0FFh, 01Fh, 09Fh, 09Fh, 00Fh, 0FFh, 0FFh, 0E7h, 0FFh, 0C7h, 0E7h
    db 0E7h, 027h, 007h, 0FFh, 03Fh, 027h, 00Fh, 01Fh, 00Fh, 027h, 0FFh, 0FFh
    db 01Fh, 09Fh, 09Fh, 09Fh, 09Fh, 00Fh, 0FFh, 0FFh, 0FFh, 00Fh, 007h, 027h
    db 027h, 027h, 0FFh, 0FFh, 0FFh, 047h, 027h, 027h, 027h, 027h, 0FFh, 0FFh
    db 0FFh, 007h, 027h, 027h, 027h, 007h, 0FFh, 0FFh, 0FFh, 007h, 027h, 027h
    db 007h, 03Fh, 03Fh, 0FFh, 0FFh, 007h, 027h, 027h, 007h, 0E7h, 0E7h, 0FFh
    db 0FFh, 027h, 007h, 03Fh, 03Fh, 03Fh, 0FFh, 0FFh, 0FFh, 007h, 03Fh, 007h
    db 0E7h, 007h, 0FFh, 0FFh, 09Fh, 00Fh, 09Fh, 09Fh, 097h, 087h, 0FFh, 0FFh
    db 0FFh, 027h, 027h, 027h, 027h, 007h, 0FFh, 0FFh, 0FFh, 027h, 027h, 027h
    db 08Fh, 0DFh, 0FFh, 0FFh, 0FFh, 027h, 027h, 027h, 007h, 027h, 0FFh, 0FFh
    db 0FFh, 027h, 08Fh, 0DFh, 08Fh, 027h, 0FFh, 0FFh, 0FFh, 027h, 027h, 007h
    db 027h, 0E7h, 087h, 0FFh, 0FFh, 007h, 0E7h, 0CFh, 09Fh, 007h, 0FFh, 000h
    db 000h, 000h, 000h, 000h, 000h, 000h, 000h, 000h, 000h, 000h, 000h, 000h
    db 000h, 000h, 000h, 000h, 000h, 000h, 000h, 000h, 000h, 000h, 000h, 000h
    db 000h, 000h, 000h, 000h, 000h, 000h, 000h, 000h, 000h, 000h, 000h, 000h
    db 000h, 000h, 000h

end