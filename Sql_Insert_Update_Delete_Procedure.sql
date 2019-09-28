create procedure InsertUpdateDelete (@id int=null,@Adi varchar(250)=null,@Soyadi varchar(250)=null,@KayitTarihi datetime=null, @Islem nvarchar(20) = '')
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
if @Islem='TümünüGetir'
begin
select * from Personel 
end
else if	@Islem='Sil'
begin
delete from Personel where Id=@id
end
end
