.class Lcom/android/phone/settings/CallWaitingCheckBoxPreference$1;
.super Ljava/lang/Object;
.source "CallWaitingCheckBoxPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/settings/CallWaitingCheckBoxPreference;->onClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/CallWaitingCheckBoxPreference;


# direct methods
.method constructor <init>(Lcom/android/phone/settings/CallWaitingCheckBoxPreference;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/phone/settings/CallWaitingCheckBoxPreference$1;->this$0:Lcom/android/phone/settings/CallWaitingCheckBoxPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x1

    .line 79
    iget-object v0, p0, Lcom/android/phone/settings/CallWaitingCheckBoxPreference$1;->this$0:Lcom/android/phone/settings/CallWaitingCheckBoxPreference;

    # setter for: Lcom/android/phone/settings/CallWaitingCheckBoxPreference;->isOpen:Z
    invoke-static {v0, v3}, Lcom/android/phone/settings/CallWaitingCheckBoxPreference;->access$102(Lcom/android/phone/settings/CallWaitingCheckBoxPreference;Z)Z

    .line 80
    iget-object v0, p0, Lcom/android/phone/settings/CallWaitingCheckBoxPreference$1;->this$0:Lcom/android/phone/settings/CallWaitingCheckBoxPreference;

    # getter for: Lcom/android/phone/settings/CallWaitingCheckBoxPreference;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/phone/settings/CallWaitingCheckBoxPreference;->access$300(Lcom/android/phone/settings/CallWaitingCheckBoxPreference;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/settings/CallWaitingCheckBoxPreference$1;->this$0:Lcom/android/phone/settings/CallWaitingCheckBoxPreference;

    # getter for: Lcom/android/phone/settings/CallWaitingCheckBoxPreference;->mHandler:Lcom/android/phone/settings/CallWaitingCheckBoxPreference$MyHandler;
    invoke-static {v1}, Lcom/android/phone/settings/CallWaitingCheckBoxPreference;->access$200(Lcom/android/phone/settings/CallWaitingCheckBoxPreference;)Lcom/android/phone/settings/CallWaitingCheckBoxPreference$MyHandler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/phone/settings/CallWaitingCheckBoxPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/android/internal/telephony/Phone;->setCallWaiting(ZLandroid/os/Message;)V

    .line 82
    iget-object v0, p0, Lcom/android/phone/settings/CallWaitingCheckBoxPreference$1;->this$0:Lcom/android/phone/settings/CallWaitingCheckBoxPreference;

    # getter for: Lcom/android/phone/settings/CallWaitingCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;
    invoke-static {v0}, Lcom/android/phone/settings/CallWaitingCheckBoxPreference;->access$400(Lcom/android/phone/settings/CallWaitingCheckBoxPreference;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/phone/settings/CallWaitingCheckBoxPreference$1;->this$0:Lcom/android/phone/settings/CallWaitingCheckBoxPreference;

    # getter for: Lcom/android/phone/settings/CallWaitingCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;
    invoke-static {v0}, Lcom/android/phone/settings/CallWaitingCheckBoxPreference;->access$400(Lcom/android/phone/settings/CallWaitingCheckBoxPreference;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/settings/CallWaitingCheckBoxPreference$1;->this$0:Lcom/android/phone/settings/CallWaitingCheckBoxPreference;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/phone/TimeConsumingPreferenceListener;->onStarted(Landroid/preference/Preference;Z)V

    .line 85
    :cond_0
    return-void
.end method
