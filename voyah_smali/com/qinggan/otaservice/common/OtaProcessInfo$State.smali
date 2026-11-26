.class public Lcom/qinggan/otaservice/common/OtaProcessInfo$State;
.super Ljava/lang/Object;
.source "OtaProcessInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/otaservice/common/OtaProcessInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation


# static fields
.field public static final APPROVE:S = 0x4s

.field public static final DELAY:S = 0x6s

.field public static final EXECUTING:S = 0x1s

.field public static final FAIL:S = 0x3s

.field public static final REFUSE:S = 0x5s

.field public static final SUCCESS:S = 0x2s


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
