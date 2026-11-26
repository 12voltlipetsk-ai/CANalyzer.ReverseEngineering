.class Lcom/pateo/tsp/TSPAPI$2;
.super Lcom/pateo/tsp/call/XCallHandler$Stub;
.source "TSPAPI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pateo/tsp/TSPAPI;->setAutoECallListener(Lcom/pateo/tsp/call/XCallListener;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pateo/tsp/TSPAPI;


# direct methods
.method constructor <init>(Lcom/pateo/tsp/TSPAPI;)V
    .registers 2
    .param p1, "this$0"    # Lcom/pateo/tsp/TSPAPI;

    .prologue
    .line 364
    iput-object p1, p0, Lcom/pateo/tsp/TSPAPI$2;->this$0:Lcom/pateo/tsp/TSPAPI;

    invoke-direct {p0}, Lcom/pateo/tsp/call/XCallHandler$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/pateo/tsp/call/XCall;Lcom/pateo/tsp/call/XCallEvent;)V
    .registers 4
    .param p1, "xcallObject"    # Lcom/pateo/tsp/call/XCall;
    .param p2, "event"    # Lcom/pateo/tsp/call/XCallEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 369
    iget-object v0, p0, Lcom/pateo/tsp/TSPAPI$2;->this$0:Lcom/pateo/tsp/TSPAPI;

    # getter for: Lcom/pateo/tsp/TSPAPI;->mAutoECallListener:Lcom/pateo/tsp/call/XCallListener;
    invoke-static {v0}, Lcom/pateo/tsp/TSPAPI;->access$100(Lcom/pateo/tsp/TSPAPI;)Lcom/pateo/tsp/call/XCallListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/pateo/tsp/call/XCallListener;->onEvent(Lcom/pateo/tsp/call/XCall;Lcom/pateo/tsp/call/XCallEvent;)V

    .line 371
    return-void
.end method
