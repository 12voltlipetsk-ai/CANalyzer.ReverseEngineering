.class public Lcom/qinggan/tsp/config/TspSupplierSignCertConfig$SupplierSignCertBean;
.super Ljava/lang/Object;
.source "TspSupplierSignCertConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/tsp/config/TspSupplierSignCertConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SupplierSignCertBean"
.end annotation


# instance fields
.field private CertSerialNumber:Ljava/lang/String;

.field private IdSignature:Ljava/lang/String;

.field final synthetic this$0:Lcom/qinggan/tsp/config/TspSupplierSignCertConfig;


# direct methods
.method public constructor <init>(Lcom/qinggan/tsp/config/TspSupplierSignCertConfig;)V
    .registers 2
    .param p1, "this$0"    # Lcom/qinggan/tsp/config/TspSupplierSignCertConfig;

    .prologue
    .line 10
    iput-object p1, p0, Lcom/qinggan/tsp/config/TspSupplierSignCertConfig$SupplierSignCertBean;->this$0:Lcom/qinggan/tsp/config/TspSupplierSignCertConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCertSerialNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/qinggan/tsp/config/TspSupplierSignCertConfig$SupplierSignCertBean;->CertSerialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getIdSignature()Ljava/lang/String;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/qinggan/tsp/config/TspSupplierSignCertConfig$SupplierSignCertBean;->IdSignature:Ljava/lang/String;

    return-object v0
.end method

.method public setCertSerialNumber(Ljava/lang/String;)V
    .registers 2
    .param p1, "CertSerialNumber"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/qinggan/tsp/config/TspSupplierSignCertConfig$SupplierSignCertBean;->CertSerialNumber:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setIdSignature(Ljava/lang/String;)V
    .registers 2
    .param p1, "IdSignature"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/qinggan/tsp/config/TspSupplierSignCertConfig$SupplierSignCertBean;->IdSignature:Ljava/lang/String;

    .line 25
    return-void
.end method
