.class public Lcom/qinggan/datatracking/app/GpsTracking$CollectionpoiObj;
.super Ljava/lang/Object;
.source "GpsTracking.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/datatracking/app/GpsTracking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CollectionpoiObj"
.end annotation


# instance fields
.field private address:Ljava/lang/String;

.field private admin_code:Ljava/lang/String;

.field private category_code:Ljava/lang/String;

.field private expand:Ljava/lang/String;

.field private guide_latitude:Ljava/lang/String;

.field private guide_longitude:Ljava/lang/String;

.field private latitude:Ljava/lang/String;

.field private level:Ljava/lang/String;

.field private longitude:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private tel:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/qinggan/datatracking/app/GpsTracking$CollectionpoiObj;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getAdmin_code()Ljava/lang/String;
    .registers 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/qinggan/datatracking/app/GpsTracking$CollectionpoiObj;->admin_code:Ljava/lang/String;

    return-object v0
.end method

.method public getCategory_code()Ljava/lang/String;
    .registers 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/qinggan/datatracking/app/GpsTracking$CollectionpoiObj;->category_code:Ljava/lang/String;

    return-object v0
.end method

.method public getExpand()Ljava/lang/String;
    .registers 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/qinggan/datatracking/app/GpsTracking$CollectionpoiObj;->expand:Ljava/lang/String;

    return-object v0
.end method

.method public getGuide_latitude()Ljava/lang/String;
    .registers 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/qinggan/datatracking/app/GpsTracking$CollectionpoiObj;->guide_latitude:Ljava/lang/String;

    return-object v0
.end method

.method public getGuide_longitude()Ljava/lang/String;
    .registers 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/qinggan/datatracking/app/GpsTracking$CollectionpoiObj;->guide_longitude:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()Ljava/lang/String;
    .registers 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/qinggan/datatracking/app/GpsTracking$CollectionpoiObj;->latitude:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/qinggan/datatracking/app/GpsTracking$CollectionpoiObj;->level:Ljava/lang/String;

    return-object v0
.end method

.method public getLongitude()Ljava/lang/String;
    .registers 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/qinggan/datatracking/app/GpsTracking$CollectionpoiObj;->longitude:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/qinggan/datatracking/app/GpsTracking$CollectionpoiObj;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/qinggan/datatracking/app/GpsTracking$CollectionpoiObj;->tel:Ljava/lang/String;

    return-object v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .registers 2
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/qinggan/datatracking/app/GpsTracking$CollectionpoiObj;->address:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public setAdmin_code(Ljava/lang/String;)V
    .registers 2
    .param p1, "admin_code"    # Ljava/lang/String;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/qinggan/datatracking/app/GpsTracking$CollectionpoiObj;->admin_code:Ljava/lang/String;

    .line 209
    return-void
.end method

.method public setCategory_code(Ljava/lang/String;)V
    .registers 2
    .param p1, "category_code"    # Ljava/lang/String;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/qinggan/datatracking/app/GpsTracking$CollectionpoiObj;->category_code:Ljava/lang/String;

    .line 217
    return-void
.end method

.method public setExpand(Ljava/lang/String;)V
    .registers 2
    .param p1, "expand"    # Ljava/lang/String;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/qinggan/datatracking/app/GpsTracking$CollectionpoiObj;->expand:Ljava/lang/String;

    .line 233
    return-void
.end method

.method public setGuide_latitude(Ljava/lang/String;)V
    .registers 2
    .param p1, "guide_latitude"    # Ljava/lang/String;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/qinggan/datatracking/app/GpsTracking$CollectionpoiObj;->guide_latitude:Ljava/lang/String;

    .line 201
    return-void
.end method

.method public setGuide_longitude(Ljava/lang/String;)V
    .registers 2
    .param p1, "guide_longitude"    # Ljava/lang/String;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/qinggan/datatracking/app/GpsTracking$CollectionpoiObj;->guide_longitude:Ljava/lang/String;

    .line 193
    return-void
.end method

.method public setLatitude(Ljava/lang/String;)V
    .registers 2
    .param p1, "latitude"    # Ljava/lang/String;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/qinggan/datatracking/app/GpsTracking$CollectionpoiObj;->latitude:Ljava/lang/String;

    .line 185
    return-void
.end method

.method public setLevel(Ljava/lang/String;)V
    .registers 2
    .param p1, "level"    # Ljava/lang/String;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/qinggan/datatracking/app/GpsTracking$CollectionpoiObj;->level:Ljava/lang/String;

    .line 225
    return-void
.end method

.method public setLongitude(Ljava/lang/String;)V
    .registers 2
    .param p1, "longitude"    # Ljava/lang/String;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/qinggan/datatracking/app/GpsTracking$CollectionpoiObj;->longitude:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/qinggan/datatracking/app/GpsTracking$CollectionpoiObj;->name:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public setTel(Ljava/lang/String;)V
    .registers 2
    .param p1, "tel"    # Ljava/lang/String;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/qinggan/datatracking/app/GpsTracking$CollectionpoiObj;->tel:Ljava/lang/String;

    .line 169
    return-void
.end method
