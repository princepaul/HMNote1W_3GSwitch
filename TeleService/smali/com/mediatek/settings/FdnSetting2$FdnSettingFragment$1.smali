.class Lcom/mediatek/settings/FdnSetting2$FdnSettingFragment$1;
.super Ljava/lang/Object;
.source "FdnSetting2.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/settings/FdnSetting2$FdnSettingFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field endPos:I

.field final synthetic this$0:Lcom/mediatek/settings/FdnSetting2$FdnSettingFragment;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/FdnSetting2$FdnSettingFragment;)V
    .locals 0

    .prologue
    .line 370
    iput-object p1, p0, Lcom/mediatek/settings/FdnSetting2$FdnSettingFragment$1;->this$0:Lcom/mediatek/settings/FdnSetting2$FdnSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/16 v3, 0x8

    .line 373
    iget-object v0, p0, Lcom/mediatek/settings/FdnSetting2$FdnSettingFragment$1;->this$0:Lcom/mediatek/settings/FdnSetting2$FdnSettingFragment;

    iget-object v0, v0, Lcom/mediatek/settings/FdnSetting2$FdnSettingFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/settings/FdnSetting2;

    # getter for: Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/settings/EditPinPreference;
    invoke-static {v0}, Lcom/mediatek/settings/FdnSetting2;->access$500(Lcom/mediatek/settings/FdnSetting2;)Lcom/android/phone/settings/EditPinPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/settings/EditPinPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    iput v0, p0, Lcom/mediatek/settings/FdnSetting2$FdnSettingFragment$1;->endPos:I

    .line 377
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-le v0, v3, :cond_0

    .line 378
    const-string v0, "Settings/FdnSetting2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove redundant char, startPos: 8, endPos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/settings/FdnSetting2$FdnSettingFragment$1;->endPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    iget v0, p0, Lcom/mediatek/settings/FdnSetting2$FdnSettingFragment$1;->endPos:I

    invoke-interface {p1, v3, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 383
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 386
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 389
    return-void
.end method
