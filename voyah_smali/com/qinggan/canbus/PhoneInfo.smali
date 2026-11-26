.class public final Lcom/qinggan/canbus/PhoneInfo;
.super Ljava/lang/Object;
.source "PhoneInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/qinggan/canbus/PhoneInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field connectedStatus:I

.field deviceName:Ljava/lang/String;

.field duration:I

.field isVehicleCall:I

.field name:Ljava/lang/String;

.field private phoneBatteryLevel:I

.field private phoneMissCallNumber:I

.field phoneNum:Ljava/lang/String;

.field private phoneSignalStregth:I

.field phoneState:Lcom/qinggan/canbus/PhoneState;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 96
    new-instance v0, Lcom/qinggan/canbus/PhoneInfo$1;

    invoke-direct {v0}, Lcom/qinggan/canbus/PhoneInfo$1;-><init>()V

    sput-object v0, Lcom/qinggan/canbus/PhoneInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method static synthetic access$002(Lcom/qinggan/canbus/PhoneInfo;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/PhoneInfo;
    .param p1, "x1"    # I

    .prologue
    .line 7
    iput p1, p0, Lcom/qinggan/canbus/PhoneInfo;->phoneBatteryLevel:I

    return p1
.end method

.method static synthetic access$102(Lcom/qinggan/canbus/PhoneInfo;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/PhoneInfo;
    .param p1, "x1"    # I

    .prologue
    .line 7
    iput p1, p0, Lcom/qinggan/canbus/PhoneInfo;->phoneSignalStregth:I

    return p1
.end method

.method static synthetic access$202(Lcom/qinggan/canbus/PhoneInfo;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/PhoneInfo;
    .param p1, "x1"    # I

    .prologue
    .line 7
    iput p1, p0, Lcom/qinggan/canbus/PhoneInfo;->phoneMissCallNumber:I

    return p1
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public getConnectedStatus()I
    .registers 2

    .prologue
    .line 29
    iget v0, p0, Lcom/qinggan/canbus/PhoneInfo;->connectedStatus:I

    return v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/qinggan/canbus/PhoneInfo;->deviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()I
    .registers 2

    .prologue
    .line 72
    iget v0, p0, Lcom/qinggan/canbus/PhoneInfo;->duration:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/qinggan/canbus/PhoneInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneBatteryLevel()I
    .registers 2

    .prologue
    .line 134
    iget v0, p0, Lcom/qinggan/canbus/PhoneInfo;->phoneBatteryLevel:I

    return v0
.end method

.method public getPhoneMissCallNumber()I
    .registers 2

    .prologue
    .line 150
    iget v0, p0, Lcom/qinggan/canbus/PhoneInfo;->phoneMissCallNumber:I

    return v0
.end method

.method public getPhoneNum()Ljava/lang/String;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/qinggan/canbus/PhoneInfo;->phoneNum:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneSignalStregth()I
    .registers 2

    .prologue
    .line 142
    iget v0, p0, Lcom/qinggan/canbus/PhoneInfo;->phoneSignalStregth:I

    return v0
.end method

.method public getPhoneState()Lcom/qinggan/canbus/PhoneState;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/qinggan/canbus/PhoneInfo;->phoneState:Lcom/qinggan/canbus/PhoneState;

    return-object v0
.end method

.method public isVehicleCall()I
    .registers 2

    .prologue
    .line 37
    iget v0, p0, Lcom/qinggan/canbus/PhoneInfo;->isVehicleCall:I

    return v0
.end method

.method public setConnectedStatus(I)V
    .registers 2
    .param p1, "connectedStatus"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/qinggan/canbus/PhoneInfo;->connectedStatus:I

    .line 34
    return-void
.end method

.method public setDeviceName(Ljava/lang/String;)V
    .registers 2
    .param p1, "deviceName"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/qinggan/canbus/PhoneInfo;->deviceName:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setDuration(I)V
    .registers 2
    .param p1, "duration"    # I

    .prologue
    .line 76
    iput p1, p0, Lcom/qinggan/canbus/PhoneInfo;->duration:I

    .line 77
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/qinggan/canbus/PhoneInfo;->name:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setPhoneBatteryLevel(I)V
    .registers 2
    .param p1, "phoneBatteryLevel"    # I

    .prologue
    .line 138
    iput p1, p0, Lcom/qinggan/canbus/PhoneInfo;->phoneBatteryLevel:I

    .line 139
    return-void
.end method

.method public setPhoneMissCallNumber(I)V
    .registers 2
    .param p1, "phoneMissCallNumber"    # I

    .prologue
    .line 154
    iput p1, p0, Lcom/qinggan/canbus/PhoneInfo;->phoneMissCallNumber:I

    .line 155
    return-void
.end method

.method public setPhoneNum(Ljava/lang/String;)V
    .registers 2
    .param p1, "phoneNum"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/qinggan/canbus/PhoneInfo;->phoneNum:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setPhoneSignalStregth(I)V
    .registers 2
    .param p1, "phoneSignalStregth"    # I

    .prologue
    .line 146
    iput p1, p0, Lcom/qinggan/canbus/PhoneInfo;->phoneSignalStregth:I

    .line 147
    return-void
.end method

.method public setPhoneState(Lcom/qinggan/canbus/PhoneState;)V
    .registers 2
    .param p1, "phoneState"    # Lcom/qinggan/canbus/PhoneState;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/qinggan/canbus/PhoneInfo;->phoneState:Lcom/qinggan/canbus/PhoneState;

    .line 50
    return-void
.end method

.method public setVehicleCall(I)V
    .registers 2
    .param p1, "isVehicleCall"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/qinggan/canbus/PhoneInfo;->isVehicleCall:I

    .line 42
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    const/16 v2, 0x27

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BTPhoneInfo{phoneNum=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/canbus/PhoneInfo;->phoneNum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/canbus/PhoneInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/PhoneInfo;->duration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", phoneState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/canbus/PhoneInfo;->phoneState:Lcom/qinggan/canbus/PhoneState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", deviceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/canbus/PhoneInfo;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", connectedStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/PhoneInfo;->connectedStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isVehicleCall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/PhoneInfo;->isVehicleCall:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", phoneBatteryLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/PhoneInfo;->phoneBatteryLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", phoneSignalStregth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/PhoneInfo;->phoneSignalStregth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", phoneMissCallNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/PhoneInfo;->phoneMissCallNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 84
    iget-object v0, p0, Lcom/qinggan/canbus/PhoneInfo;->phoneNum:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/qinggan/canbus/PhoneInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    iget v0, p0, Lcom/qinggan/canbus/PhoneInfo;->duration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget-object v0, p0, Lcom/qinggan/canbus/PhoneInfo;->phoneState:Lcom/qinggan/canbus/PhoneState;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 88
    iget-object v0, p0, Lcom/qinggan/canbus/PhoneInfo;->deviceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    iget v0, p0, Lcom/qinggan/canbus/PhoneInfo;->connectedStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    iget v0, p0, Lcom/qinggan/canbus/PhoneInfo;->isVehicleCall:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    iget v0, p0, Lcom/qinggan/canbus/PhoneInfo;->phoneBatteryLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    iget v0, p0, Lcom/qinggan/canbus/PhoneInfo;->phoneSignalStregth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    iget v0, p0, Lcom/qinggan/canbus/PhoneInfo;->phoneMissCallNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    return-void
.end method
