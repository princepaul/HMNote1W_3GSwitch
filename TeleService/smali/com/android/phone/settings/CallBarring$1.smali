.class Lcom/android/phone/settings/CallBarring$1;
.super Landroid/content/BroadcastReceiver;
.source "CallBarring.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/settings/CallBarring;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/CallBarring;


# direct methods
.method constructor <init>(Lcom/android/phone/settings/CallBarring;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/phone/settings/CallBarring$1;->this$0:Lcom/android/phone/settings/CallBarring;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 73
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "action":Ljava/lang/String;
    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/settings/CallBarring$1;->this$0:Lcom/android/phone/settings/CallBarring;

    # getter for: Lcom/android/phone/settings/CallBarring;->mSlotId:I
    invoke-static {v4}, Lcom/android/phone/settings/CallBarring;->access$000(Lcom/android/phone/settings/CallBarring;)I

    move-result v4

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v5

    invoke-virtual {v5}, Lmiui/telephony/SubscriptionManager;->getDefaultSlotId()I

    move-result v5

    invoke-static {p2, v5}, Lmiui/telephony/SubscriptionManager;->getSlotIdExtra(Landroid/content/Intent;I)I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 76
    const-string v4, "ss"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 77
    .local v3, "simState":Ljava/lang/String;
    const-string v4, "ABSENT"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 79
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/phone/settings/CallBarring$1;->this$0:Lcom/android/phone/settings/CallBarring;

    const-class v5, Lcom/android/phone/CallFeaturesSetting;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 81
    .local v2, "parent":Landroid/content/Intent;
    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    const/high16 v4, 0x20000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 83
    iget-object v4, p0, Lcom/android/phone/settings/CallBarring$1;->this$0:Lcom/android/phone/settings/CallBarring;

    invoke-virtual {v4, v2}, Lcom/android/phone/settings/CallBarring;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    iget-object v4, p0, Lcom/android/phone/settings/CallBarring$1;->this$0:Lcom/android/phone/settings/CallBarring;

    invoke-virtual {v4}, Lcom/android/phone/settings/CallBarring;->finish()V

    .line 91
    .end local v2    # "parent":Landroid/content/Intent;
    .end local v3    # "simState":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 84
    .restart local v3    # "simState":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 85
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    :try_start_1
    # getter for: Lcom/android/phone/settings/CallBarring;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/settings/CallBarring;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v5, "can not go back to parent "

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    iget-object v4, p0, Lcom/android/phone/settings/CallBarring$1;->this$0:Lcom/android/phone/settings/CallBarring;

    invoke-virtual {v4}, Lcom/android/phone/settings/CallBarring;->finish()V

    goto :goto_0

    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/android/phone/settings/CallBarring$1;->this$0:Lcom/android/phone/settings/CallBarring;

    invoke-virtual {v5}, Lcom/android/phone/settings/CallBarring;->finish()V

    throw v4
.end method
