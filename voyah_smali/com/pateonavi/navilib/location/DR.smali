.class public Lcom/pateonavi/navilib/location/DR;
.super Ljava/lang/Object;
.source "DR.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DR"

.field private static _instance:Lcom/pateonavi/navilib/location/DR; = null

.field private static final kUpdateSignTypeSaveFile:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 13
    :try_start_0
    const-string v1, "DR"

    const-string v2, "load dragent_jni"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    const-string v1, "dragent"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_c} :catch_14

    .line 20
    .local v0, "ule":Ljava/lang/UnsatisfiedLinkError;
    :goto_c
    new-instance v1, Lcom/pateonavi/navilib/location/DR;

    invoke-direct {v1}, Lcom/pateonavi/navilib/location/DR;-><init>()V

    sput-object v1, Lcom/pateonavi/navilib/location/DR;->_instance:Lcom/pateonavi/navilib/location/DR;

    return-void

    .line 15
    .end local v0    # "ule":Ljava/lang/UnsatisfiedLinkError;
    :catch_14
    move-exception v0

    .line 16
    .restart local v0    # "ule":Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "DR"

    const-string v2, "could not load dragent_jni"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static Instance()Lcom/pateonavi/navilib/location/DR;
    .registers 1

    .prologue
    .line 23
    sget-object v0, Lcom/pateonavi/navilib/location/DR;->_instance:Lcom/pateonavi/navilib/location/DR;

    return-object v0
.end method


# virtual methods
.method public native CreateAgent()I
.end method

.method public native CreateServer()I
.end method

.method public native GetFlag(I)I
.end method

.method public native IsRunning()I
.end method

.method public native IsStoped()I
.end method

.method public native ReadSwap(Ljava/nio/ByteBuffer;I[I)I
.end method

.method public native ResetFactoryState()V
.end method

.method public native SaveConfig()Z
.end method

.method public native SetDefaultlocation(DDZ)V
.end method

.method public native StartDR(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public native StopDR()Z
.end method

.method public native UpdateFlag(II)I
.end method

.method public UpdateSaveFileFlag(I)V
    .registers 3
    .param p1, "flag"    # I

    .prologue
    .line 50
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/pateonavi/navilib/location/DR;->UpdateFlag(II)I

    .line 51
    return-void
.end method

.method public native WriteSwap(Ljava/nio/ByteBuffer;I)I
.end method

.method public destroy()V
    .registers 1

    .prologue
    .line 31
    return-void
.end method
