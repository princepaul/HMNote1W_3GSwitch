.class Lcom/android/phone/Ringer$VbirtStateChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Ringer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/Ringer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VbirtStateChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/Ringer;


# direct methods
.method private constructor <init>(Lcom/android/phone/Ringer;)V
    .locals 0

    .prologue
    .line 491
    iput-object p1, p0, Lcom/android/phone/Ringer$VbirtStateChangeReceiver;->this$0:Lcom/android/phone/Ringer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/Ringer;Lcom/android/phone/Ringer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/Ringer;
    .param p2, "x1"    # Lcom/android/phone/Ringer$1;

    .prologue
    .line 491
    invoke-direct {p0, p1}, Lcom/android/phone/Ringer$VbirtStateChangeReceiver;-><init>(Lcom/android/phone/Ringer;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 494
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "vbirtchange"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 495
    const-string v0, "Ringer"

    const-string v1, "onReceive, VBIRT_MODE_CHANGE_ACTION"

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    iget-object v0, p0, Lcom/android/phone/Ringer$VbirtStateChangeReceiver;->this$0:Lcom/android/phone/Ringer;

    iget-object v0, v0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/android/phone/Ringer$VbirtStateChangeReceiver;->this$0:Lcom/android/phone/Ringer;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/phone/Ringer;->mContinueVibrating:Z

    .line 498
    iget-object v0, p0, Lcom/android/phone/Ringer$VbirtStateChangeReceiver;->this$0:Lcom/android/phone/Ringer;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    .line 501
    :cond_0
    return-void
.end method
