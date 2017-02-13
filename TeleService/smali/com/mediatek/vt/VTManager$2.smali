.class Lcom/mediatek/vt/VTManager$2;
.super Ljava/lang/Thread;
.source "VTManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/vt/VTManager;->createThreads()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/vt/VTManager;


# direct methods
.method constructor <init>(Lcom/mediatek/vt/VTManager;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/mediatek/vt/VTManager$2;->this$0:Lcom/mediatek/vt/VTManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 199
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 200
    monitor-enter p0

    .line 201
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/vt/VTManager$2;->this$0:Lcom/mediatek/vt/VTManager;

    new-instance v1, Lcom/mediatek/vt/VTManager$TelMsgHandler;

    iget-object v2, p0, Lcom/mediatek/vt/VTManager$2;->this$0:Lcom/mediatek/vt/VTManager;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/mediatek/vt/VTManager$TelMsgHandler;-><init>(Lcom/mediatek/vt/VTManager;Lcom/mediatek/vt/VTManager$1;)V

    iput-object v1, v0, Lcom/mediatek/vt/VTManager;->mTelMsgHandler:Landroid/os/Handler;

    .line 202
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 203
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 206
    return-void

    .line 203
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
