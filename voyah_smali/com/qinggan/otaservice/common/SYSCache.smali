.class public Lcom/qinggan/otaservice/common/SYSCache;
.super Ljava/lang/Object;
.source "SYSCache.java"


# static fields
.field public static sBackupVersionCode:Ljava/lang/String;

.field public static sCachedDstMcuVersion:Ljava/lang/String;

.field public static sCachedDstMpuVersion:Ljava/lang/String;

.field public static sCachedTaskItemSid:J

.field public static sCachedTaskSid:J

.field public static sCanName:Ljava/lang/String;

.field public static sCanVersion:Ljava/lang/String;

.field public static sCurrentVersionCode:Ljava/lang/String;

.field public static sDownloadFileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qinggan/otaservice/engine/SYSVersionInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static sDownloadFileListCopy:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qinggan/otaservice/engine/SYSVersionInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static sDualSystem:Z

.field public static sHwVersion:Ljava/lang/String;

.field public static sLocalSYSFileMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/qinggan/otaservice/engine/SYSVersionInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static sMcuName:Ljava/lang/String;

.field public static sMcuPlatform:I

.field public static sMcuPlatformString:Ljava/lang/String;

.field public static sMcuVersion:Ljava/lang/String;

.field public static sMpuName:Ljava/lang/String;

.field public static sNeedRepair:Z

.field public static sNeedSyncSYS:Z

.field public static sOTAExtra:Ljava/lang/String;

.field public static sResName:Ljava/lang/String;

.field public static sResVersion:Ljava/lang/String;

.field public static sSoftWareCode:Ljava/lang/String;

.field public static sSortedUpdateList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qinggan/otaservice/engine/SYSVersionInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static sTargetVersionCodeDisplay:Ljava/lang/String;

.field public static sTargetVersionDesc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 11
    const-string v0, ""

    sput-object v0, Lcom/qinggan/otaservice/common/SYSCache;->sCurrentVersionCode:Ljava/lang/String;

    .line 12
    const-string v0, ""

    sput-object v0, Lcom/qinggan/otaservice/common/SYSCache;->sBackupVersionCode:Ljava/lang/String;

    .line 13
    const-string v0, ""

    sput-object v0, Lcom/qinggan/otaservice/common/SYSCache;->sTargetVersionCodeDisplay:Ljava/lang/String;

    .line 14
    const-string v0, ""

    sput-object v0, Lcom/qinggan/otaservice/common/SYSCache;->sTargetVersionDesc:Ljava/lang/String;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/qinggan/otaservice/common/SYSCache;->sSortedUpdateList:Ljava/util/ArrayList;

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/qinggan/otaservice/common/SYSCache;->sLocalSYSFileMap:Ljava/util/HashMap;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/qinggan/otaservice/common/SYSCache;->sDownloadFileList:Ljava/util/ArrayList;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/qinggan/otaservice/common/SYSCache;->sDownloadFileListCopy:Ljava/util/ArrayList;

    .line 20
    sput-boolean v1, Lcom/qinggan/otaservice/common/SYSCache;->sNeedSyncSYS:Z

    .line 21
    sput-boolean v1, Lcom/qinggan/otaservice/common/SYSCache;->sNeedRepair:Z

    .line 22
    sput v1, Lcom/qinggan/otaservice/common/SYSCache;->sMcuPlatform:I

    .line 23
    const-string v0, ""

    sput-object v0, Lcom/qinggan/otaservice/common/SYSCache;->sMcuPlatformString:Ljava/lang/String;

    .line 24
    const-string v0, ""

    sput-object v0, Lcom/qinggan/otaservice/common/SYSCache;->sMcuVersion:Ljava/lang/String;

    .line 25
    const-string v0, ""

    sput-object v0, Lcom/qinggan/otaservice/common/SYSCache;->sCanVersion:Ljava/lang/String;

    .line 26
    const-string v0, ""

    sput-object v0, Lcom/qinggan/otaservice/common/SYSCache;->sResVersion:Ljava/lang/String;

    .line 27
    const-string v0, ""

    sput-object v0, Lcom/qinggan/otaservice/common/SYSCache;->sHwVersion:Ljava/lang/String;

    .line 28
    const/4 v0, 0x1

    sput-boolean v0, Lcom/qinggan/otaservice/common/SYSCache;->sDualSystem:Z

    .line 29
    const-string v0, ""

    sput-object v0, Lcom/qinggan/otaservice/common/SYSCache;->sOTAExtra:Ljava/lang/String;

    .line 30
    const-string v0, ""

    sput-object v0, Lcom/qinggan/otaservice/common/SYSCache;->sMpuName:Ljava/lang/String;

    .line 31
    const-string v0, ""

    sput-object v0, Lcom/qinggan/otaservice/common/SYSCache;->sMcuName:Ljava/lang/String;

    .line 32
    const-string v0, ""

    sput-object v0, Lcom/qinggan/otaservice/common/SYSCache;->sCanName:Ljava/lang/String;

    .line 33
    const-string v0, ""

    sput-object v0, Lcom/qinggan/otaservice/common/SYSCache;->sResName:Ljava/lang/String;

    .line 34
    sput-object v2, Lcom/qinggan/otaservice/common/SYSCache;->sCachedDstMpuVersion:Ljava/lang/String;

    .line 35
    sput-object v2, Lcom/qinggan/otaservice/common/SYSCache;->sCachedDstMcuVersion:Ljava/lang/String;

    .line 36
    sput-wide v4, Lcom/qinggan/otaservice/common/SYSCache;->sCachedTaskSid:J

    .line 37
    sput-wide v4, Lcom/qinggan/otaservice/common/SYSCache;->sCachedTaskItemSid:J

    .line 38
    const-string v0, ""

    sput-object v0, Lcom/qinggan/otaservice/common/SYSCache;->sSoftWareCode:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "writer"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .prologue
    .line 41
    const-string v0, "\n----"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CurrentVersionCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/qinggan/otaservice/common/SYSCache;->sCurrentVersionCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BackupVersionCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/qinggan/otaservice/common/SYSCache;->sBackupVersionCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "McuPlatform: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/qinggan/otaservice/common/SYSCache;->sMcuPlatform:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "McuPlatformString: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/qinggan/otaservice/common/SYSCache;->sMcuPlatformString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "McuVersion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/qinggan/otaservice/common/SYSCache;->sMcuVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DualSystem: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/qinggan/otaservice/common/SYSCache;->sDualSystem:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OTAExtra: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/qinggan/otaservice/common/SYSCache;->sOTAExtra:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MpuName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/qinggan/otaservice/common/SYSCache;->sMpuName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "McuName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/qinggan/otaservice/common/SYSCache;->sMcuName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CachedDstMpuVersion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/qinggan/otaservice/common/SYSCache;->sCachedDstMpuVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CachedDstMcuVersion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/qinggan/otaservice/common/SYSCache;->sCachedDstMcuVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CachedTaskId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v2, Lcom/qinggan/otaservice/common/SYSCache;->sCachedTaskSid:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CachedTaskItemId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v2, Lcom/qinggan/otaservice/common/SYSCache;->sCachedTaskItemSid:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 55
    return-void
.end method
