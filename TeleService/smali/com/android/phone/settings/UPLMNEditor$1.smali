.class Lcom/android/phone/settings/UPLMNEditor$1;
.super Landroid/content/BroadcastReceiver;
.source "UPLMNEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/settings/UPLMNEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/UPLMNEditor;


# direct methods
.method constructor <init>(Lcom/android/phone/settings/UPLMNEditor;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/phone/settings/UPLMNEditor$1;->this$0:Lcom/android/phone/settings/UPLMNEditor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 116
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/android/phone/settings/UPLMNEditor$1;->this$0:Lcom/android/phone/settings/UPLMNEditor;

    const-string v2, "state"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    # setter for: Lcom/android/phone/settings/UPLMNEditor;->mAirplaneModeOn:Z
    invoke-static {v1, v2}, Lcom/android/phone/settings/UPLMNEditor;->access$002(Lcom/android/phone/settings/UPLMNEditor;Z)Z

    .line 119
    iget-object v1, p0, Lcom/android/phone/settings/UPLMNEditor$1;->this$0:Lcom/android/phone/settings/UPLMNEditor;

    # invokes: Lcom/android/phone/settings/UPLMNEditor;->setScreenEnabled()V
    invoke-static {v1}, Lcom/android/phone/settings/UPLMNEditor;->access$100(Lcom/android/phone/settings/UPLMNEditor;)V

    .line 121
    :cond_0
    return-void
.end method
