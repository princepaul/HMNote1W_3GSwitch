.class Lcom/android/phone/settings/MultiSimInfoEditorActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "MultiSimInfoEditorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/settings/MultiSimInfoEditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/MultiSimInfoEditorActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/settings/MultiSimInfoEditorActivity;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity$2;->this$0:Lcom/android/phone/settings/MultiSimInfoEditorActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 133
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    iget-object v1, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity$2;->this$0:Lcom/android/phone/settings/MultiSimInfoEditorActivity;

    # invokes: Lcom/android/phone/settings/MultiSimInfoEditorActivity;->updateCheckState()V
    invoke-static {v1}, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->access$300(Lcom/android/phone/settings/MultiSimInfoEditorActivity;)V

    .line 137
    :cond_0
    return-void
.end method
