.class Lcom/mediatek/phone/PhoneInterfaceManagerEx$MessengerWrapper$1;
.super Landroid/os/Handler;
.source "PhoneInterfaceManagerEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/phone/PhoneInterfaceManagerEx$MessengerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/phone/PhoneInterfaceManagerEx$MessengerWrapper;


# direct methods
.method constructor <init>(Lcom/mediatek/phone/PhoneInterfaceManagerEx$MessengerWrapper;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 2080
    iput-object p1, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MessengerWrapper$1;->this$1:Lcom/mediatek/phone/PhoneInterfaceManagerEx$MessengerWrapper;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2084
    :try_start_0
    const-string v1, "PhoneInterfaceManagerEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MessengerWrapper callback triggered: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2085
    iget-object v1, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MessengerWrapper$1;->this$1:Lcom/mediatek/phone/PhoneInterfaceManagerEx$MessengerWrapper;

    # getter for: Lcom/mediatek/phone/PhoneInterfaceManagerEx$MessengerWrapper;->mMessenger:Landroid/os/Messenger;
    invoke-static {v1}, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MessengerWrapper;->access$1200(Lcom/mediatek/phone/PhoneInterfaceManagerEx$MessengerWrapper;)Landroid/os/Messenger;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {p0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2089
    :goto_0
    return-void

    .line 2086
    :catch_0
    move-exception v0

    .line 2087
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
