.class Lcom/android/phone/settings/MultiSimInfoEditorActivity$1;
.super Landroid/os/Handler;
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
    .line 116
    iput-object p1, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity$1;->this$0:Lcom/android/phone/settings/MultiSimInfoEditorActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 119
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 127
    :goto_0
    return-void

    .line 121
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity$1;->this$0:Lcom/android/phone/settings/MultiSimInfoEditorActivity;

    iget-object v1, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity$1;->this$0:Lcom/android/phone/settings/MultiSimInfoEditorActivity;

    # getter for: Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSlotId:I
    invoke-static {v1}, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->access$000(Lcom/android/phone/settings/MultiSimInfoEditorActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity$1;->this$0:Lcom/android/phone/settings/MultiSimInfoEditorActivity;

    # getter for: Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mEnableSim:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->access$100(Lcom/android/phone/settings/MultiSimInfoEditorActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    # invokes: Lcom/android/phone/settings/MultiSimInfoEditorActivity;->switchSimRadioState(IZ)V
    invoke-static {v0, v1, v2}, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->access$200(Lcom/android/phone/settings/MultiSimInfoEditorActivity;IZ)V

    goto :goto_0

    .line 124
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity$1;->this$0:Lcom/android/phone/settings/MultiSimInfoEditorActivity;

    # getter for: Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mEnableSim:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->access$100(Lcom/android/phone/settings/MultiSimInfoEditorActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
