.class Lcom/android/phone/settings/NetworkSetting$5;
.super Ljava/lang/Object;
.source "NetworkSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/settings/NetworkSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/NetworkSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/settings/NetworkSetting;)V
    .locals 0

    .prologue
    .line 550
    iput-object p1, p0, Lcom/android/phone/settings/NetworkSetting$5;->this$0:Lcom/android/phone/settings/NetworkSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 553
    packed-switch p2, :pswitch_data_0

    .line 565
    :goto_0
    return-void

    .line 555
    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/settings/NetworkSetting$5;->this$0:Lcom/android/phone/settings/NetworkSetting;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Lcom/android/phone/settings/NetworkSetting;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 556
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 557
    iget-object v1, p0, Lcom/android/phone/settings/NetworkSetting$5;->this$0:Lcom/android/phone/settings/NetworkSetting;

    const/4 v2, 0x1

    # setter for: Lcom/android/phone/settings/NetworkSetting;->mNeedDataReEnable:Z
    invoke-static {v1, v2}, Lcom/android/phone/settings/NetworkSetting;->access$1302(Lcom/android/phone/settings/NetworkSetting;Z)Z

    .line 558
    iget-object v1, p0, Lcom/android/phone/settings/NetworkSetting$5;->this$0:Lcom/android/phone/settings/NetworkSetting;

    # getter for: Lcom/android/phone/settings/NetworkSetting;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/settings/NetworkSetting;->access$1000(Lcom/android/phone/settings/NetworkSetting;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/settings/NetworkSetting$5;->this$0:Lcom/android/phone/settings/NetworkSetting;

    # getter for: Lcom/android/phone/settings/NetworkSetting;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/phone/settings/NetworkSetting;->access$1000(Lcom/android/phone/settings/NetworkSetting;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x190

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 562
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/settings/NetworkSetting$5;->this$0:Lcom/android/phone/settings/NetworkSetting;

    invoke-virtual {v1}, Lcom/android/phone/settings/NetworkSetting;->finish()V

    goto :goto_0

    .line 553
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
