.class public abstract Lcom/qinggan/tsp/TspManager$OnInitDetailListener;
.super Ljava/lang/Object;
.source "TspManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/tsp/TspManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OnInitDetailListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onResult(ZLcom/qinggan/tsp/InitError;)V
.end method
