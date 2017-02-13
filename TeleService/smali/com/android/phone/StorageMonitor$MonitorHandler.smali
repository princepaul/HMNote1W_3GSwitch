.class Lcom/android/phone/StorageMonitor$MonitorHandler;
.super Landroid/os/Handler;
.source "StorageMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/StorageMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MonitorHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/StorageMonitor;


# direct methods
.method public constructor <init>(Lcom/android/phone/StorageMonitor;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/phone/StorageMonitor$MonitorHandler;->this$0:Lcom/android/phone/StorageMonitor;

    .line 34
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 35
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 39
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 44
    :goto_0
    return-void

    .line 41
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/StorageMonitor$MonitorHandler;->this$0:Lcom/android/phone/StorageMonitor;

    # invokes: Lcom/android/phone/StorageMonitor;->checkStorageSpace()V
    invoke-static {v0}, Lcom/android/phone/StorageMonitor;->access$000(Lcom/android/phone/StorageMonitor;)V

    goto :goto_0

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
