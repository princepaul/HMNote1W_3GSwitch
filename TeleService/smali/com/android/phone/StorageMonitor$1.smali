.class Lcom/android/phone/StorageMonitor$1;
.super Landroid/content/BroadcastReceiver;
.source "StorageMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/StorageMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/StorageMonitor;


# direct methods
.method constructor <init>(Lcom/android/phone/StorageMonitor;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/phone/StorageMonitor$1;->this$0:Lcom/android/phone/StorageMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 51
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 53
    :cond_0
    iget-object v1, p0, Lcom/android/phone/StorageMonitor$1;->this$0:Lcom/android/phone/StorageMonitor;

    # getter for: Lcom/android/phone/StorageMonitor;->mListener:Lcom/android/phone/StorageMonitor$Listener;
    invoke-static {v1}, Lcom/android/phone/StorageMonitor;->access$100(Lcom/android/phone/StorageMonitor;)Lcom/android/phone/StorageMonitor$Listener;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/android/phone/StorageMonitor$Listener;->onError(I)V

    .line 55
    :cond_1
    iget-object v1, p0, Lcom/android/phone/StorageMonitor$1;->this$0:Lcom/android/phone/StorageMonitor;

    invoke-virtual {v1}, Lcom/android/phone/StorageMonitor;->stopMonitor()V

    .line 56
    return-void
.end method
