.class Lcom/android/phone/settings/UserPLMNListPreference$1;
.super Landroid/content/BroadcastReceiver;
.source "UserPLMNListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/settings/UserPLMNListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/UserPLMNListPreference;


# direct methods
.method constructor <init>(Lcom/android/phone/settings/UserPLMNListPreference;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/phone/settings/UserPLMNListPreference$1;->this$0:Lcom/android/phone/settings/UserPLMNListPreference;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 122
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/android/phone/settings/UserPLMNListPreference$1;->this$0:Lcom/android/phone/settings/UserPLMNListPreference;

    const-string v2, "state"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    # setter for: Lcom/android/phone/settings/UserPLMNListPreference;->mAirplaneModeOn:Z
    invoke-static {v1, v2}, Lcom/android/phone/settings/UserPLMNListPreference;->access$102(Lcom/android/phone/settings/UserPLMNListPreference;Z)Z

    .line 125
    iget-object v1, p0, Lcom/android/phone/settings/UserPLMNListPreference$1;->this$0:Lcom/android/phone/settings/UserPLMNListPreference;

    # invokes: Lcom/android/phone/settings/UserPLMNListPreference;->setScreenEnabled()V
    invoke-static {v1}, Lcom/android/phone/settings/UserPLMNListPreference;->access$200(Lcom/android/phone/settings/UserPLMNListPreference;)V

    .line 127
    :cond_0
    return-void
.end method
