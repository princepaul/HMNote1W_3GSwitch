.class Lcom/android/phone/OutgoingCallBroadcaster$1;
.super Ljava/lang/Object;
.source "OutgoingCallBroadcaster.java"

# interfaces
.implements Lcom/android/phone/SimCardPickDialog$OnSimCardPickCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/OutgoingCallBroadcaster;->launchMSimDialer(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/OutgoingCallBroadcaster;


# direct methods
.method constructor <init>(Lcom/android/phone/OutgoingCallBroadcaster;)V
    .locals 0

    .prologue
    .line 984
    iput-object p1, p0, Lcom/android/phone/OutgoingCallBroadcaster$1;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    .prologue
    .line 994
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster$1;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    const/4 v1, 0x0

    # setter for: Lcom/android/phone/OutgoingCallBroadcaster;->mSimCardPickDialog:Lcom/android/phone/SimCardPickDialog;
    invoke-static {v0, v1}, Lcom/android/phone/OutgoingCallBroadcaster;->access$102(Lcom/android/phone/OutgoingCallBroadcaster;Lcom/android/phone/SimCardPickDialog;)Lcom/android/phone/SimCardPickDialog;

    .line 995
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster$1;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    invoke-virtual {v0}, Lcom/android/phone/OutgoingCallBroadcaster;->finish()V

    .line 996
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster$1;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    const/4 v1, 0x0

    sget v2, Lmiui/R$anim;->dialog_exit:I

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/OutgoingCallBroadcaster;->overridePendingTransition(II)V

    .line 997
    return-void
.end method

.method public onSimCardPick(ILandroid/content/Intent;)V
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 987
    invoke-static {p2, p1}, Lmiui/telephony/SubscriptionManager;->putSlotIdExtra(Landroid/content/Intent;I)V

    .line 988
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster$1;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    invoke-virtual {v0, p2}, Lcom/android/phone/OutgoingCallBroadcaster;->onContinueCallProcess(Landroid/content/Intent;)V

    .line 989
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster$1;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    const/4 v1, 0x0

    # setter for: Lcom/android/phone/OutgoingCallBroadcaster;->mSimCardPickDialog:Lcom/android/phone/SimCardPickDialog;
    invoke-static {v0, v1}, Lcom/android/phone/OutgoingCallBroadcaster;->access$102(Lcom/android/phone/OutgoingCallBroadcaster;Lcom/android/phone/SimCardPickDialog;)Lcom/android/phone/SimCardPickDialog;

    .line 990
    return-void
.end method
