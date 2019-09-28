create proc InsertUpdateDelete (@id int,@Adi varchar(250),@Soyadi varchar(250),@KayitTarihi datetime, @Islem nvarchar(20) = '')
as
begin
if @Islem='Ekle'
begin
insert into Personel (Adi,Soyadi,KayitTarihi) values(@Adi,@Soyadi,@KayitTarihi)
end
if @Islem='Güncelle'
begin
update Personel set Adi=@Adi,Soyadi=@Soyadi,KayitTarihi=@KayitTarihi
where Id=@id
end
else if	@Islem='Sil'
begin
delete from Personel where Id=@id
end
end


exec InsertUpdateDelete @id=50, @Adi='Mert',@Soyadi='Sakin',@KayitTarihi='1995-06-11 00:00:00.000',@Islem='Ekle'