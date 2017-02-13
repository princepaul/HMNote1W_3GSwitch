.class Lcom/mediatek/phone/PhoneInterfaceManagerEx$MessengerWrapper;
.super Ljava/lang/Object;
.source "PhoneInterfaceManagerEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/phone/PhoneInterfaceManagerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessengerWrapper"
.end annotation


# instance fields
.field private mInternalHandler:Landroid/os/Handler;

.field private mMessenger:Landroid/os/Messenger;

.field final synthetic this$0:Lcom/mediatek/phone/PhoneInterfaceManagerEx;


# direct methods
.method public constructor <init>(Lcom/mediatek/phone/PhoneInterfaceManagerEx;Landroid/os/IBinder;)V
    .locals 2
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 2092
    iput-object p1, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MessengerWrapper;->this$0:Lcom/mediatek/phone/PhoneInterfaceManagerEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2080
    new-instance v0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MessengerWrapper$1;

    iget-object v1, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MessengerWrapper;->this$0:Lcom/mediatek/phone/PhoneInterfaceManagerEx;

    iget-object v1, v1, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mMainThreadHandler:Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadHandler;

    invoke-virtual {v1}, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MessengerWrapper$1;-><init>(Lcom/mediatek/phone/PhoneInterfaceManagerEx$MessengerWrapper;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MessengerWrapper;->mInternalHandler:Landroid/os/Handler;

    .line 2093
    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MessengerWrapper;->mMessenger:Landroid/os/Messenger;

    .line 2094
    return-void
.end method

.method static synthetic access$1200(Lcom/mediatek/phone/PhoneInterfaceManagerEx$MessengerWrapper;)Landroid/os/Messenger;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/phone/PhoneInterfaceManagerEx$MessengerWrapper;

    .prologue
    .line 2077
    iget-object v0, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MessengerWrapper;->mMessenger:Landroid/os/Messenger;

    return-object v0
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 2101
    iget-object v0, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MessengerWrapper;->mInternalHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getMessenger()Landroid/os/Messenger;
    .locals 1

    .prologue
    .line 2097
    iget-object v0, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MessengerWrapper;->mMessenger:Landroid/os/Messenger;

    return-object v0
.end method
