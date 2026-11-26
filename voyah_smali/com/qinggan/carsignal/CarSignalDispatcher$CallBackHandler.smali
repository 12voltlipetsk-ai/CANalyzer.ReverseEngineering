.class Lcom/qinggan/carsignal/CarSignalDispatcher$CallBackHandler;
.super Landroid/os/Handler;
.source "CarSignalDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/carsignal/CarSignalDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallBackHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qinggan/carsignal/CarSignalDispatcher;


# direct methods
.method public constructor <init>(Lcom/qinggan/carsignal/CarSignalDispatcher;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/qinggan/carsignal/CarSignalDispatcher$CallBackHandler;->this$0:Lcom/qinggan/carsignal/CarSignalDispatcher;

    .line 65
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 66
    return-void
.end method

.method private varargs allObserversInvoke(Ljava/lang/String;[Ljava/lang/Object;)Z
    .registers 14
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "typesAndArgs"    # [Ljava/lang/Object;

    .prologue
    const/4 v10, 0x0

    .line 81
    array-length v6, p2

    .line 82
    .local v6, "len":I
    rem-int/lit8 v9, v6, 0x2

    if-eqz v9, :cond_8

    move v9, v10

    .line 121
    :goto_7
    return v9

    .line 86
    :cond_8
    const/4 v7, 0x0

    .line 87
    .local v7, "method":Ljava/lang/reflect/Method;
    div-int/lit8 v9, v6, 0x2

    new-array v8, v9, [Ljava/lang/Class;

    .line 88
    .local v8, "par":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    div-int/lit8 v9, v6, 0x2

    new-array v0, v9, [Ljava/lang/Object;

    .line 91
    .local v0, "args":[Ljava/lang/Object;
    const/4 v4, 0x0

    .local v4, "i":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_13
    :try_start_13
    div-int/lit8 v9, v6, 0x2

    if-ge v4, v9, :cond_28

    .line 92
    aget-object v9, p2, v5

    check-cast v9, Ljava/lang/Class;

    aput-object v9, v8, v4

    .line 93
    add-int/lit8 v9, v5, 0x1

    aget-object v9, p2, v9

    aput-object v9, v0, v4

    .line 91
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x2

    goto :goto_13

    .line 95
    :cond_28
    const-class v9, Lcom/qinggan/carsignal/ICarSignalServiceCallBack;

    invoke-virtual {v9, p1, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_2d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_13 .. :try_end_2d} :catch_50

    move-result-object v7

    .line 101
    iget-object v9, p0, Lcom/qinggan/carsignal/CarSignalDispatcher$CallBackHandler;->this$0:Lcom/qinggan/carsignal/CarSignalDispatcher;

    # getter for: Lcom/qinggan/carsignal/CarSignalDispatcher;->mCallbacks:Ljava/util/List;
    invoke-static {v9}, Lcom/qinggan/carsignal/CarSignalDispatcher;->access$000(Lcom/qinggan/carsignal/CarSignalDispatcher;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_38
    :goto_38
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qinggan/carsignal/ICarSignalServiceCallBack;

    .line 102
    .local v1, "callback":Lcom/qinggan/carsignal/ICarSignalServiceCallBack;
    if-eqz v1, :cond_38

    .line 104
    :try_start_46
    invoke-virtual {v7, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_49
    .catch Ljava/lang/IllegalArgumentException; {:try_start_46 .. :try_end_49} :catch_4a
    .catch Ljava/lang/IllegalAccessException; {:try_start_46 .. :try_end_49} :catch_56
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_46 .. :try_end_49} :catch_5b
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_49} :catch_60

    goto :goto_38

    .line 105
    :catch_4a
    move-exception v2

    .line 106
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 121
    .end local v1    # "callback":Lcom/qinggan/carsignal/ICarSignalServiceCallBack;
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :cond_4e
    :goto_4e
    const/4 v9, 0x1

    goto :goto_7

    .line 96
    :catch_50
    move-exception v3

    .line 97
    .local v3, "e1":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v3}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    move v9, v10

    .line 98
    goto :goto_7

    .line 108
    .end local v3    # "e1":Ljava/lang/NoSuchMethodException;
    .restart local v1    # "callback":Lcom/qinggan/carsignal/ICarSignalServiceCallBack;
    :catch_56
    move-exception v2

    .line 109
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_4e

    .line 111
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_5b
    move-exception v2

    .line 112
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_38

    .line 114
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_60
    move-exception v2

    .line 115
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_38
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 70
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    .line 71
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Ljava/lang/Object;>;"
    const-string v3, "methodName"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget-object v1, v3, v4

    check-cast v1, Ljava/lang/String;

    .line 72
    .local v1, "methodName":Ljava/lang/String;
    if-eqz v1, :cond_19

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 75
    :cond_19
    :goto_19
    return-void

    .line 73
    :cond_1a
    const-string v3, "args"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    .line 74
    .local v2, "objects":[Ljava/lang/Object;
    invoke-direct {p0, v1, v2}, Lcom/qinggan/carsignal/CarSignalDispatcher$CallBackHandler;->allObserversInvoke(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_19
.end method
