-- nagłówek -----------------------
declare

     L_id_dzialu DZIALY.IDDZIALU%type := 666;
     L_nazwa_dzialu DZIALY.NAZWA%type := 'DPO';
     L_dzial_row DZIALY%rowtype;

begin
	--pobranie danych zapytaniem SQL do typu wierszowego
	select D.* into L_dzial_row from DZIALY D where D.IDDZIALU = L_id_dzialu;
	
	--modyfikacja zapytaniem SQL z typem wierszowym
	L_dzial_row.NAZWA := 'Nowa nazwa oddziału';
	update DZIALY D set row = L_dzial_row where D.IDDZIALU = L_id_dzialu;
	
	--SQL insert z typem wierszowym
	L_dzial_row.IDDZIALU := -7777; -- zmiana w gałęzi na boku
	insert into DZIALY values L_dzial_row;
	
end;
