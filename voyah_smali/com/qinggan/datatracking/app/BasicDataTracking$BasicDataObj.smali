.class public Lcom/qinggan/datatracking/app/BasicDataTracking$BasicDataObj;
.super Ljava/lang/Object;
.source "BasicDataTracking.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/datatracking/app/BasicDataTracking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BasicDataObj"
.end annotation


# instance fields
.field private android_system_version:Ljava/lang/String;

.field private expand:Ljava/lang/String;

.field private first_system_version:Ljava/lang/String;

.field private hardware_version:Ljava/lang/String;

.field private second_system_version:Ljava/lang/String;

.field private terminal_type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAndroid_system_version()Ljava/lang/String;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/qinggan/datatracking/app/BasicDataTracking$BasicDataObj;->android_system_version:Ljava/lang/String;

    return-object v0
.end method

.method public getExpand()Ljava/lang/String;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/qinggan/datatracking/app/BasicDataTracking$BasicDataObj;->expand:Ljava/lang/String;

    return-object v0
.end method

.method public getFirst_system_version()Ljava/lang/String;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/qinggan/datatracking/app/BasicDataTracking$BasicDataObj;->first_system_version:Ljava/lang/String;

    return-object v0
.end method

.method public getHardware_version()Ljava/lang/String;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/qinggan/datatracking/app/BasicDataTracking$BasicDataObj;->hardware_version:Ljava/lang/String;

    return-object v0
.end method

.method public getSecond_system_version()Ljava/lang/String;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/qinggan/datatracking/app/BasicDataTracking$BasicDataObj;->second_system_version:Ljava/lang/String;

    return-object v0
.end method

.method public getTerminal_type()Ljava/lang/String;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/qinggan/datatracking/app/BasicDataTracking$BasicDataObj;->terminal_type:Ljava/lang/String;

    return-object v0
.end method

.method public setAndroid_system_version(Ljava/lang/String;)V
    .registers 2
    .param p1, "android_system_version"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/qinggan/datatracking/app/BasicDataTracking$BasicDataObj;->android_system_version:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setExpand(Ljava/lang/String;)V
    .registers 2
    .param p1, "expand"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/qinggan/datatracking/app/BasicDataTracking$BasicDataObj;->expand:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setFirst_system_version(Ljava/lang/String;)V
    .registers 2
    .param p1, "first_system_version"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/qinggan/datatracking/app/BasicDataTracking$BasicDataObj;->first_system_version:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setHardware_version(Ljava/lang/String;)V
    .registers 2
    .param p1, "hardware_version"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/qinggan/datatracking/app/BasicDataTracking$BasicDataObj;->hardware_version:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setSecond_system_version(Ljava/lang/String;)V
    .registers 2
    .param p1, "second_system_version"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/qinggan/datatracking/app/BasicDataTracking$BasicDataObj;->second_system_version:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setTerminal_type(Ljava/lang/String;)V
    .registers 2
    .param p1, "terminal_type"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/qinggan/datatracking/app/BasicDataTracking$BasicDataObj;->terminal_type:Ljava/lang/String;

    .line 49
    return-void
.end method
