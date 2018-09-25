-- nagłówek -----------------------
declare

     L_id_dzialu DZIALY.IDDZIALU%type := 77;
     L_nazwa_dzialu DZIALY.NAZWA%type;
     L_dzial_row DZIALY%rowtype;

begin
	--pobranie danych zapytaniem SQL do typu wierszowego
	select D.* into L_dzial_row from DZIALY D where D.IDDZIALU = L_id_dzialu;
	--modyfikacja zapytaniem SQL z typem wierszowym
	L_dzial_row.NAZWA := 'Nowa nazwa';
	update DZIALY D set row = L_dzial_row where D.IDDZIALU = L_id_dzialu;
	--SQL insert z typem wierszowym
	L_dzial_row.IDDZIALU := -999;
	insert into DZIALY values L_dzial_row;
	
end;
