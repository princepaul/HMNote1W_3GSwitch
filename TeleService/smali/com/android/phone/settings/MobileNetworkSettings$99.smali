.class Lcom/android/phone/settings/MobileNetworkSettings$99;
.super Landroid/os/Handler;
.source "MobileNetworkSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/settings/MobileNetworkSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/MobileNetworkSettings;


# direct methods
.method constructor <init>(Lcom/android/phone/settings/MobileNetworkSettings;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/phone/settings/MobileNetworkSettings$99;->this$0:Lcom/android/phone/settings/MobileNetworkSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x7d1

    if-ne v0, v1, :cond_0

    .line 1479
    iget-object v0, p0, Lcom/android/phone/settings/MobileNetworkSettings$99;->this$0:Lcom/android/phone/settings/MobileNetworkSettings;

    const/16 v1, 0x190

    invoke-virtual {v0, v1}, Lcom/android/phone/settings/MobileNetworkSettings;->removeDialog(I)V

    :cond_0
    return-void
.end method
