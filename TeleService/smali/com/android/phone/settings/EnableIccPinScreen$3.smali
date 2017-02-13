.class Lcom/android/phone/settings/EnableIccPinScreen$3;
.super Ljava/lang/Object;
.source "EnableIccPinScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/settings/EnableIccPinScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/EnableIccPinScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/settings/EnableIccPinScreen;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/phone/settings/EnableIccPinScreen$3;->this$0:Lcom/android/phone/settings/EnableIccPinScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/phone/settings/EnableIccPinScreen$3;->this$0:Lcom/android/phone/settings/EnableIccPinScreen;

    # getter for: Lcom/android/phone/settings/EnableIccPinScreen;->mPinField:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/phone/settings/EnableIccPinScreen;->access$100(Lcom/android/phone/settings/EnableIccPinScreen;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/android/phone/settings/EnableIccPinScreen$3;->this$0:Lcom/android/phone/settings/EnableIccPinScreen;

    iget-object v1, p0, Lcom/android/phone/settings/EnableIccPinScreen$3;->this$0:Lcom/android/phone/settings/EnableIccPinScreen;

    invoke-virtual {v1}, Lcom/android/phone/settings/EnableIccPinScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b02a9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    # invokes: Lcom/android/phone/settings/EnableIccPinScreen;->showStatus(Ljava/lang/CharSequence;)V
    invoke-static {v0, v1}, Lcom/android/phone/settings/EnableIccPinScreen;->access$200(Lcom/android/phone/settings/EnableIccPinScreen;Ljava/lang/CharSequence;)V

    .line 140
    iget-object v0, p0, Lcom/android/phone/settings/EnableIccPinScreen$3;->this$0:Lcom/android/phone/settings/EnableIccPinScreen;

    # invokes: Lcom/android/phone/settings/EnableIccPinScreen;->enableIccPin()V
    invoke-static {v0}, Lcom/android/phone/settings/EnableIccPinScreen;->access$300(Lcom/android/phone/settings/EnableIccPinScreen;)V

    goto :goto_0
.end method
