.class public Lcom/qinggan/otaservice/engine/DownloadManager;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qinggan/otaservice/engine/DownloadManager$PercentThread;,
        Lcom/qinggan/otaservice/engine/DownloadManager$DownloadManagerHoloder;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mConnList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/net/HttpURLConnection;",
            ">;"
        }
    .end annotation
.end field

.field mCycleFlag:Z

.field private mDownloadCallBack:Lcom/qinggan/otaservice/common/IDownloadCallBack;

.field private volatile mDownloadFlag:Z

.field private mDownloadedPkgSize:J

.field private mFileMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/net/URL;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private mInputStream:Ljava/io/InputStream;

.field private mPercent:I

.field private mPercentThread:Lcom/qinggan/otaservice/engine/DownloadManager$PercentThread;

.field private volatile mPercentThreadFlag:Z

.field private mSavedFile:Ljava/io/RandomAccessFile;

.field private mTotalSize:J

.field private mUserCancel:Z

.field networkException:Z


# direct methods
.method private constructor <init>()V
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-class v0, Lcom/qinggan/otaservice/engine/DownloadManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->TAG:Ljava/lang/String;

    .line 26
    iput-object v2, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->mConnList:Ljava/util/ArrayList;

    .line 27
    iput-object v2, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->mFileMap:Ljava/util/HashMap;

    .line 28
    iput-object v2, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->mPercentThread:Lcom/qinggan/otaservice/engine/DownloadManager$PercentThread;

    .line 29
    iput-boolean v1, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->mPercentThreadFlag:Z

    .line 30
    iput-boolean v1, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->mDownloadFlag:Z

    .line 31
    iput-wide v4, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->mTotalSize:J

    .line 32
    iput-wide v4, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->mDownloadedPkgSize:J

    .line 33
    iput v1, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->mPercent:I

    .line 34
    iput-object v2, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->mDownloadCallBack:Lcom/qinggan/otaservice/common/IDownloadCallBack;

    .line 36
    iput-boolean v1, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->mUserCancel:Z

    .line 37
    iput-boolean v1, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->mCycleFlag:Z

    .line 38
    iput-boolean v1, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->networkException:Z

    .line 39
    iput-object v2, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->mSavedFile:Ljava/io/RandomAccessFile;

    .line 40
    iput-object v2, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->mInputStream:Ljava/io/InputStream;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->mConnList:Ljava/util/ArrayList;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->mFileMap:Ljava/util/HashMap;

    .line 45
    return-void
.end method

.method synthetic constructor <init>(Lcom/qinggan/otaservice/engine/DownloadManager$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/qinggan/otaservice/engine/DownloadManager$1;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/qinggan/otaservice/engine/DownloadManager;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/qinggan/otaservice/engine/DownloadManager;)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/engine/DownloadManager;

    .prologue
    .line 24
    iget v0, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->mPercent:I

    return v0
.end method

.method static synthetic access$1002(Lcom/qinggan/otaservice/engine/DownloadManager;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/engine/DownloadManager;
    .param p1, "x1"    # I

    .prologue
    .line 24
    iput p1, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->mPercent:I

    return p1
.end method

.method static synthetic access$200(Lcom/qinggan/otaservice/engine/DownloadManager;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/engine/DownloadManager;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->mFileMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/qinggan/otaservice/engine/DownloadManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/engine/DownloadManager;

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->mDownloadFlag:Z

    return v0
.end method

.method static synthetic access$302(Lcom/qinggan/otaservice/engine/DownloadManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/engine/DownloadManager;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->mDownloadFlag:Z

    return p1
.end method

.method static synthetic access$400(Lcom/qinggan/otaservice/engine/DownloadManager;Ljava/net/URL;Ljava/io/File;)V
    .registers 3
    .param p0, "x0"    # Lcom/qinggan/otaservice/engine/DownloadManager;
    .param p1, "x1"    # Ljava/net/URL;
    .param p2, "x2"    # Ljava/io/File;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/qinggan/otaservice/engine/DownloadManager;->download(Ljava/net/URL;Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$500(Lcom/qinggan/otaservice/engine/DownloadManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/engine/DownloadManager;

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->mUserCancel:Z

    return v0
.end method

.method static synthetic access$502(Lcom/qinggan/otaservice/engine/DownloadManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/engine/DownloadManager;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->mUserCancel:Z

    return p1
.end method

.method static synthetic access$600(Lcom/qinggan/otaservice/engine/DownloadManager;)Lcom/qinggan/otaservice/common/IDownloadCallBack;
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/engine/DownloadManager;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->mDownloadCallBack:Lcom/qinggan/otaservice/common/IDownloadCallBack;

    return-object v0
.end method

.method static synthetic access$700(Lcom/qinggan/otaservice/engine/DownloadManager;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/engine/DownloadManager;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/qinggan/otaservice/engine/DownloadManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/engine/DownloadManager;

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->mPercentThreadFlag:Z

    return v0
.end method

.method static synthetic access$802(Lcom/qinggan/otaservice/engine/DownloadManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/engine/DownloadManager;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->mPercentThreadFlag:Z

    return p1
.end method

.method static synthetic access$900(Lcom/qinggan/otaservice/engine/DownloadManager;)J
    .registers 3
    .param p0, "x0"    # Lcom/qinggan/otaservice/engine/DownloadManager;

    .prologue
    .line 24
    iget-wide v0, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->mTotalSize:J

    return-wide v0
.end method

.method private download(Ljava/net/URL;Ljava/io/File;)V
    .registers 17
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    const/4 v13, 0x0

    .line 138
    const/4 v3, 0x0

    .line 140
    .local v3, "cycleCount":I
    :cond_2
    iput-boolean v13, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->mCycleFlag:Z

    .line 141
    add-int/lit8 v3, v3, 0x1

    .line 142
    iget-object v10, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Start Download, URL = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/qinggan/otaservice/common/Tool;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v10, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Download Try Count = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", Local Path = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 144
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 143
    invoke-static {v10, v11}, Lcom/qinggan/otaservice/common/Tool;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const/4 v6, 0x0

    .line 146
    .local v6, "httpConnection":Ljava/net/HttpURLConnection;
    const-wide/16 v8, 0x0

    .line 148
    .local v8, "startPoint":J
    :try_start_4b
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_85

    .line 149
    iget-object v10, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Download File not Exist = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/qinggan/otaservice/common/Tool;->logi(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_6d} :catch_160
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_6d} :catch_26f
    .catchall {:try_start_4b .. :try_end_6d} :catchall_25b

    .line 243
    :try_start_6d
    iget-object v10, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->mSavedFile:Ljava/io/RandomAccessFile;

    if-eqz v10, :cond_76

    .line 244
    iget-object v10, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->mSavedFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V

    .line 246
    :cond_76
    iget-object v10, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->mInputStream:Ljava/io/InputStream;

    if-eqz v10, :cond_7f

    .line 247
    iget-object v10, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_7f} :catch_80

    .line 254
    :cond_7f
    :goto_7f
    return-void

    .line 249
    :catch_80
    move-exception v5

    .line 250
    .local v5, "e1":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7f

    .line 152
    .end local v5    # "e1":Ljava/lang/Exception;
    :cond_85
    const/4 v10, 0x1

    const/4 v11, 0x0

    :try_start_87
    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Ljava/io/File;->setReadable(ZZ)Z

    .line 153
    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Ljava/io/File;->setWritable(ZZ)Z

    .line 154
    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 156
    new-instance v10, Ljava/io/RandomAccessFile;

    const-string v11, "rw"

    move-object/from16 v0, p2

    invoke-direct {v10, v0, v11}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v10, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->mSavedFile:Ljava/io/RandomAccessFile;

    .line 157
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->length()J

    move-result-wide v8

    .line 158
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v6, v0

    .line 159
    const/16 v10, 0x7530

    invoke-virtual {v6, v10}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 160
    const/16 v10, 0x7530

    invoke-virtual {v6, v10}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 161
    const-string v10, "GET"

    invoke-virtual {v6, v10}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 162
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 163
    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 164
    const-string v10, "range"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "bytes="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "-"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->connect()V

    .line 167
    iget-object v10, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->mConnList:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    iput-object v10, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->mInputStream:Ljava/io/InputStream;

    .line 170
    iget-object v10, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Range, Bytes = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "-  , Response Code = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 174
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 170
    invoke-static {v10, v11}, Lcom/qinggan/otaservice/common/Tool;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v10, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Before Download, File Size = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", Response Content-Length = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 178
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 175
    invoke-static {v10, v11}, Lcom/qinggan/otaservice/common/Tool;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v10, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->mSavedFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v10, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 180
    const/16 v10, 0x800

    new-array v2, v10, [B

    .line 181
    .local v2, "b":[B
    const/4 v7, -0x1

    .line 183
    .local v7, "nRead":I
    :goto_14a
    iget-boolean v10, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->mDownloadFlag:Z

    if-eqz v10, :cond_1f4

    .line 184
    iget-object v10, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->mInputStream:Ljava/io/InputStream;

    const/4 v11, 0x0

    const/16 v12, 0x800

    invoke-virtual {v10, v2, v11, v12}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    .line 185
    if-lez v7, :cond_1d8

    .line 186
    iget-object v10, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->mSavedFile:Ljava/io/RandomAccessFile;

    const/4 v11, 0x0

    invoke-virtual {v10, v2, v11, v7}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_15f
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_15f} :catch_160
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_15f} :catch_26f
    .catchall {:try_start_87 .. :try_end_15f} :catchall_25b

    goto :goto_14a

    .line 202
    .end local v2    # "b":[B
    .end local v7    # "nRead":I
    :catch_160
    move-exception v4

    .line 203
    .local v4, "e":Ljava/io/IOException;
    :try_start_161
    iget-object v10, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->TAG:Ljava/lang/String;

    const-string v11, "Download Zip IO Exception"

    invoke-static {v10, v11}, Lcom/qinggan/otaservice/common/Tool;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 205
    instance-of v10, v4, Ljava/net/UnknownHostException;

    if-nez v10, :cond_18f

    instance-of v10, v4, Ljava/net/SocketTimeoutException;

    if-nez v10, :cond_18f

    instance-of v10, v4, Ljava/net/SocketException;

    if-nez v10, :cond_18f

    instance-of v10, v4, Ljava/io/EOFException;

    if-nez v10, :cond_18f

    instance-of v10, v4, Ljava/net/ProtocolException;

    if-nez v10, :cond_18f

    instance-of v10, v4, Ljavax/net/ssl/SSLException;

    if-nez v10, :cond_18f

    .line 211
    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    const-string v11, "unexpected end of stream"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_192

    .line 212
    :cond_18f
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->networkException:Z

    .line 214
    :cond_192
    if-eqz v6, :cond_19c

    .line 215
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 216
    iget-object v10, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->mConnList:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 218
    :cond_19c
    iget-boolean v10, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->networkException:Z

    if-eqz v10, :cond_1ab

    iget-object v10, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->mConnList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-nez v10, :cond_1ab

    const/4 v10, 0x5

    if-eq v3, v10, :cond_1af

    :cond_1ab
    iget-boolean v10, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->networkException:Z

    if-nez v10, :cond_232

    .line 220
    :cond_1af
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->mPercentThreadFlag:Z

    .line 221
    iget-object v10, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->mDownloadCallBack:Lcom/qinggan/otaservice/common/IDownloadCallBack;

    if-eqz v10, :cond_1bb

    .line 222
    iget-object v10, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->mDownloadCallBack:Lcom/qinggan/otaservice/common/IDownloadCallBack;

    invoke-interface {v10}, Lcom/qinggan/otaservice/common/IDownloadCallBack;->exceptionDownload()V

    .line 224
    :cond_1bb
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->mDownloadFlag:Z
    :try_end_1be
    .catchall {:try_start_161 .. :try_end_1be} :catchall_25b

    .line 243
    :try_start_1be
    iget-object v10, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->mSavedFile:Ljava/io/RandomAccessFile;

    if-eqz v10, :cond_1c7

    .line 244
    iget-object v10, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->mSavedFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V

    .line 246
    :cond_1c7
    iget-object v10, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->mInputStream:Ljava/io/InputStream;

    if-eqz v10, :cond_7f

    .line 247
    iget-object v10, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_1d0
    .catch Ljava/lang/Exception; {:try_start_1be .. :try_end_1d0} :catch_1d2

    goto/16 :goto_7f

    .line 249
    :catch_1d2
    move-exception v5

    .line 250
    .restart local v5    # "e1":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_7f

    .line 188
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "e1":Ljava/lang/Exception;
    .restart local v2    # "b":[B
    .restart local v7    # "nRead":I
    :cond_1d8
    :try_start_1d8
    iget-object v10, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Input Stream Read Completed, Local Path = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 190
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 188
    invoke-static {v10, v11}, Lcom/qinggan/otaservice/common/Tool;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :cond_1f4
    iget-object v10, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->mSavedFile:Ljava/io/RandomAccessFile;

    if-eqz v10, :cond_1fd

    .line 195
    iget-object v10, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->mSavedFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V

    .line 197
    :cond_1fd
    iget-object v10, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->mInputStream:Ljava/io/InputStream;

    if-eqz v10, :cond_206

    .line 198
    iget-object v10, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 200
    :cond_206
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 201
    iget-object v10, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->mConnList:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_20e
    .catch Ljava/io/IOException; {:try_start_1d8 .. :try_end_20e} :catch_160
    .catch Ljava/lang/Exception; {:try_start_1d8 .. :try_end_20e} :catch_26f
    .catchall {:try_start_1d8 .. :try_end_20e} :catchall_25b

    .line 243
    :try_start_20e
    iget-object v10, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->mSavedFile:Ljava/io/RandomAccessFile;

    if-eqz v10, :cond_217

    .line 244
    iget-object v10, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->mSavedFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V

    .line 246
    :cond_217
    iget-object v10, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->mInputStream:Ljava/io/InputStream;

    if-eqz v10, :cond_220

    .line 247
    iget-object v10, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_220
    .catch Ljava/lang/Exception; {:try_start_20e .. :try_end_220} :catch_22d

    .line 253
    .end local v2    # "b":[B
    .end local v7    # "nRead":I
    :cond_220
    :goto_220
    iget-boolean v10, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->mDownloadFlag:Z

    if-eqz v10, :cond_7f

    iget-boolean v10, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->mCycleFlag:Z

    if-eqz v10, :cond_7f

    const/4 v10, 0x4

    if-le v3, v10, :cond_2

    goto/16 :goto_7f

    .line 249
    .restart local v2    # "b":[B
    .restart local v7    # "nRead":I
    :catch_22d
    move-exception v5

    .line 250
    .restart local v5    # "e1":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_220

    .line 227
    .end local v2    # "b":[B
    .end local v5    # "e1":Ljava/lang/Exception;
    .end local v7    # "nRead":I
    .restart local v4    # "e":Ljava/io/IOException;
    :cond_232
    :try_start_232
    iget-boolean v10, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->networkException:Z
    :try_end_234
    .catchall {:try_start_232 .. :try_end_234} :catchall_25b

    if-eqz v10, :cond_23e

    .line 229
    const-wide/16 v10, 0xbb8

    :try_start_238
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_23b
    .catch Ljava/lang/InterruptedException; {:try_start_238 .. :try_end_23b} :catch_256
    .catchall {:try_start_238 .. :try_end_23b} :catchall_25b

    .line 233
    :goto_23b
    const/4 v10, 0x1

    :try_start_23c
    iput-boolean v10, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->mCycleFlag:Z
    :try_end_23e
    .catchall {:try_start_23c .. :try_end_23e} :catchall_25b

    .line 243
    :cond_23e
    :try_start_23e
    iget-object v10, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->mSavedFile:Ljava/io/RandomAccessFile;

    if-eqz v10, :cond_247

    .line 244
    iget-object v10, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->mSavedFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V

    .line 246
    :cond_247
    iget-object v10, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->mInputStream:Ljava/io/InputStream;

    if-eqz v10, :cond_220

    .line 247
    iget-object v10, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_250
    .catch Ljava/lang/Exception; {:try_start_23e .. :try_end_250} :catch_251

    goto :goto_220

    .line 249
    :catch_251
    move-exception v5

    .line 250
    .restart local v5    # "e1":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_220

    .line 230
    .end local v5    # "e1":Ljava/lang/Exception;
    :catch_256
    move-exception v5

    .line 231
    .local v5, "e1":Ljava/lang/InterruptedException;
    :try_start_257
    invoke-virtual {v5}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_25a
    .catchall {:try_start_257 .. :try_end_25a} :catchall_25b

    goto :goto_23b

    .line 242
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "e1":Ljava/lang/InterruptedException;
    :catchall_25b
    move-exception v10

    .line 243
    :try_start_25c
    iget-object v11, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->mSavedFile:Ljava/io/RandomAccessFile;

    if-eqz v11, :cond_265

    .line 244
    iget-object v11, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->mSavedFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->close()V

    .line 246
    :cond_265
    iget-object v11, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->mInputStream:Ljava/io/InputStream;

    if-eqz v11, :cond_26e

    .line 247
    iget-object v11, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_26e
    .catch Ljava/lang/Exception; {:try_start_25c .. :try_end_26e} :catch_295

    .line 252
    :cond_26e
    :goto_26e
    throw v10

    .line 235
    :catch_26f
    move-exception v4

    .line 236
    .local v4, "e":Ljava/lang/Exception;
    :try_start_270
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 237
    if-eqz v6, :cond_27d

    .line 238
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 239
    iget-object v10, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->mConnList:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_27d
    .catchall {:try_start_270 .. :try_end_27d} :catchall_25b

    .line 243
    :cond_27d
    :try_start_27d
    iget-object v10, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->mSavedFile:Ljava/io/RandomAccessFile;

    if-eqz v10, :cond_286

    .line 244
    iget-object v10, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->mSavedFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V

    .line 246
    :cond_286
    iget-object v10, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->mInputStream:Ljava/io/InputStream;

    if-eqz v10, :cond_220

    .line 247
    iget-object v10, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_28f
    .catch Ljava/lang/Exception; {:try_start_27d .. :try_end_28f} :catch_290

    goto :goto_220

    .line 249
    :catch_290
    move-exception v5

    .line 250
    .local v5, "e1":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_220

    .line 249
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "e1":Ljava/lang/Exception;
    :catch_295
    move-exception v5

    .line 250
    .restart local v5    # "e1":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_26e
.end method

.method public static getInstance()Lcom/qinggan/otaservice/engine/DownloadManager;
    .registers 1

    .prologue
    .line 48
    # getter for: Lcom/qinggan/otaservice/engine/DownloadManager$DownloadManagerHoloder;->sInstance:Lcom/qinggan/otaservice/engine/DownloadManager;
    invoke-static {}, Lcom/qinggan/otaservice/engine/DownloadManager$DownloadManagerHoloder;->access$000()Lcom/qinggan/otaservice/engine/DownloadManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addFile(Ljava/net/URL;Ljava/lang/String;)V
    .registers 5
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "filePath"    # Ljava/lang/String;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->mFileMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 73
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->mFileMap:Ljava/util/HashMap;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    :cond_12
    return-void
.end method

.method public cancelDownload()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 130
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->TAG:Ljava/lang/String;

    const-string v1, "Cancel Download"

    invoke-static {v0, v1}, Lcom/qinggan/otaservice/common/Tool;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iput-boolean v2, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->mPercentThreadFlag:Z

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->mPercentThread:Lcom/qinggan/otaservice/engine/DownloadManager$PercentThread;

    .line 133
    iput-boolean v2, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->mDownloadFlag:Z

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->mUserCancel:Z

    .line 135
    return-void
.end method

.method public getDownloadCallBack()Lcom/qinggan/otaservice/common/IDownloadCallBack;
    .registers 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->mDownloadCallBack:Lcom/qinggan/otaservice/common/IDownloadCallBack;

    return-object v0
.end method

.method public getDownloadPercent()I
    .registers 2

    .prologue
    .line 298
    iget v0, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->mPercent:I

    return v0
.end method

.method public getDownloadedSize()J
    .registers 11

    .prologue
    .line 78
    const-wide/16 v2, 0x0

    .line 79
    .local v2, "downloadedSize":J
    iget-object v7, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->mFileMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 80
    .local v5, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/net/URL;Ljava/io/File;>;>;"
    :goto_c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_24

    .line 81
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 82
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/URL;Ljava/io/File;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    .line 83
    .local v6, "key":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 84
    .local v0, "_size":J
    add-long/2addr v2, v0

    .line 85
    goto :goto_c

    .line 86
    .end local v0    # "_size":J
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/URL;Ljava/io/File;>;"
    .end local v6    # "key":Ljava/io/File;
    :cond_24
    iget-wide v8, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->mDownloadedPkgSize:J

    add-long/2addr v8, v2

    return-wide v8
.end method

.method public getIsNetWorkException()Z
    .registers 2

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->networkException:Z

    return v0
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->mFileMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 258
    return-void
.end method

.method public setCallBack(Lcom/qinggan/otaservice/common/IDownloadCallBack;)V
    .registers 2
    .param p1, "iDownloadCallBack"    # Lcom/qinggan/otaservice/common/IDownloadCallBack;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->mDownloadCallBack:Lcom/qinggan/otaservice/common/IDownloadCallBack;

    .line 57
    return-void
.end method

.method public setDownloadedPkgSize(J)V
    .registers 4
    .param p1, "size"    # J

    .prologue
    .line 68
    iput-wide p1, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->mDownloadedPkgSize:J

    .line 69
    return-void
.end method

.method public setTotalSize(J)V
    .registers 4
    .param p1, "totalSize"    # J

    .prologue
    .line 60
    iput-wide p1, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->mTotalSize:J

    .line 61
    return-void
.end method

.method public startDownload()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 90
    iget-boolean v1, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->mDownloadFlag:Z

    if-nez v1, :cond_19

    .line 91
    iput v2, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->mPercent:I

    .line 92
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->mDownloadFlag:Z

    .line 93
    iput-boolean v2, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->mUserCancel:Z

    .line 94
    new-instance v0, Lcom/qinggan/otaservice/engine/DownloadManager$1;

    invoke-direct {v0, p0}, Lcom/qinggan/otaservice/engine/DownloadManager$1;-><init>(Lcom/qinggan/otaservice/engine/DownloadManager;)V

    .line 111
    .local v0, "mThread":Ljava/lang/Thread;
    const-string v1, "DownZipThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 114
    .end local v0    # "mThread":Ljava/lang/Thread;
    :cond_19
    return-void
.end method

.method public startPercent()V
    .registers 3

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->mPercentThreadFlag:Z

    if-nez v0, :cond_2a

    .line 118
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->TAG:Ljava/lang/String;

    const-string v1, "Start Percent Thread"

    invoke-static {v0, v1}, Lcom/qinggan/otaservice/common/Tool;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->mPercentThreadFlag:Z

    .line 120
    new-instance v0, Lcom/qinggan/otaservice/engine/DownloadManager$PercentThread;

    invoke-direct {v0, p0}, Lcom/qinggan/otaservice/engine/DownloadManager$PercentThread;-><init>(Lcom/qinggan/otaservice/engine/DownloadManager;)V

    iput-object v0, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->mPercentThread:Lcom/qinggan/otaservice/engine/DownloadManager$PercentThread;

    .line 121
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->mPercentThread:Lcom/qinggan/otaservice/engine/DownloadManager$PercentThread;

    const-string v1, "DownPerThread"

    invoke-virtual {v0, v1}, Lcom/qinggan/otaservice/engine/DownloadManager$PercentThread;->setName(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->mPercentThread:Lcom/qinggan/otaservice/engine/DownloadManager$PercentThread;

    invoke-virtual {v0}, Lcom/qinggan/otaservice/engine/DownloadManager$PercentThread;->start()V

    .line 123
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->mDownloadCallBack:Lcom/qinggan/otaservice/common/IDownloadCallBack;

    if-eqz v0, :cond_2a

    .line 124
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/DownloadManager;->mDownloadCallBack:Lcom/qinggan/otaservice/common/IDownloadCallBack;

    invoke-interface {v0}, Lcom/qinggan/otaservice/common/IDownloadCallBack;->startDownload()V

    .line 127
    :cond_2a
    return-void
.end method
