.class final Lretrofit/Types$ParameterizedTypeImpl;
.super Ljava/lang/Object;
.source "Types.java"

# interfaces
.implements Ljava/lang/reflect/ParameterizedType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit/Types;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ParameterizedTypeImpl"
.end annotation


# instance fields
.field private final ownerType:Ljava/lang/reflect/Type;

.field private final rawType:Ljava/lang/reflect/Type;

.field private final typeArguments:[Ljava/lang/reflect/Type;


# direct methods
.method public varargs constructor <init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V
    .registers 9
    .param p1, "ownerType"    # Ljava/lang/reflect/Type;
    .param p2, "rawType"    # Ljava/lang/reflect/Type;
    .param p3, "typeArguments"    # [Ljava/lang/reflect/Type;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    instance-of v1, p2, Ljava/lang/Class;

    if-eqz v1, :cond_21

    if-nez p1, :cond_1d

    move v2, v3

    :goto_c
    move-object v1, p2

    check-cast v1, Ljava/lang/Class;

    .line 293
    invoke-virtual {v1}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_1f

    :goto_15
    if-eq v2, v3, :cond_21

    .line 294
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_1d
    move v2, v4

    .line 292
    goto :goto_c

    :cond_1f
    move v3, v4

    .line 293
    goto :goto_15

    .line 297
    :cond_21
    iput-object p1, p0, Lretrofit/Types$ParameterizedTypeImpl;->ownerType:Ljava/lang/reflect/Type;

    .line 298
    iput-object p2, p0, Lretrofit/Types$ParameterizedTypeImpl;->rawType:Ljava/lang/reflect/Type;

    .line 299
    invoke-virtual {p3}, [Ljava/lang/reflect/Type;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/reflect/Type;

    iput-object v1, p0, Lretrofit/Types$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    .line 301
    iget-object v1, p0, Lretrofit/Types$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    array-length v2, v1

    :goto_30
    if-ge v4, v2, :cond_42

    aget-object v0, v1, v4

    .line 302
    .local v0, "typeArgument":Ljava/lang/reflect/Type;
    if-nez v0, :cond_3c

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 303
    :cond_3c
    # invokes: Lretrofit/Types;->checkNotPrimitive(Ljava/lang/reflect/Type;)V
    invoke-static {v0}, Lretrofit/Types;->access$000(Ljava/lang/reflect/Type;)V

    .line 301
    add-int/lit8 v4, v4, 0x1

    goto :goto_30

    .line 305
    .end local v0    # "typeArgument":Ljava/lang/reflect/Type;
    :cond_42
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 320
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_e

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-static {p0, p1}, Lretrofit/Types;->equals(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public getActualTypeArguments()[Ljava/lang/reflect/Type;
    .registers 2

    .prologue
    .line 308
    iget-object v0, p0, Lretrofit/Types$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    invoke-virtual {v0}, [Ljava/lang/reflect/Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getOwnerType()Ljava/lang/reflect/Type;
    .registers 2

    .prologue
    .line 316
    iget-object v0, p0, Lretrofit/Types$ParameterizedTypeImpl;->ownerType:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getRawType()Ljava/lang/reflect/Type;
    .registers 2

    .prologue
    .line 312
    iget-object v0, p0, Lretrofit/Types$ParameterizedTypeImpl;->rawType:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 324
    iget-object v0, p0, Lretrofit/Types$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lretrofit/Types$ParameterizedTypeImpl;->rawType:Ljava/lang/reflect/Type;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lretrofit/Types$ParameterizedTypeImpl;->ownerType:Ljava/lang/reflect/Type;

    # invokes: Lretrofit/Types;->hashCodeOrZero(Ljava/lang/Object;)I
    invoke-static {v1}, Lretrofit/Types;->access$100(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 328
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lretrofit/Types$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v2, v2, 0x1e

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 329
    .local v1, "result":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lretrofit/Types$ParameterizedTypeImpl;->rawType:Ljava/lang/reflect/Type;

    invoke-static {v2}, Lretrofit/Types;->typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    iget-object v2, p0, Lretrofit/Types$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    array-length v2, v2

    if-nez v2, :cond_1f

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 335
    :goto_1e
    return-object v2

    .line 331
    :cond_1f
    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lretrofit/Types$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-static {v3}, Lretrofit/Types;->typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_32
    iget-object v2, p0, Lretrofit/Types$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    array-length v2, v2

    if-ge v0, v2, :cond_4b

    .line 333
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lretrofit/Types$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    aget-object v3, v3, v0

    invoke-static {v3}, Lretrofit/Types;->typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    .line 335
    :cond_4b
    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1e
.end method
