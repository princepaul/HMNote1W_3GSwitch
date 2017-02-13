.class Lcom/mediatek/phone/UssdAlertActivity$1;
.super Ljava/lang/Object;
.source "UssdAlertActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/phone/UssdAlertActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/phone/UssdAlertActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/phone/UssdAlertActivity;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/mediatek/phone/UssdAlertActivity$1;->this$0:Lcom/mediatek/phone/UssdAlertActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 106
    if-nez p1, :cond_0

    move v0, v1

    .line 107
    .local v0, "count":I
    :goto_0
    if-lez v0, :cond_1

    .line 108
    iget-object v1, p0, Lcom/mediatek/phone/UssdAlertActivity$1;->this$0:Lcom/mediatek/phone/UssdAlertActivity;

    # getter for: Lcom/mediatek/phone/UssdAlertActivity;->mAlert:Lcom/android/internal/app/AlertController;
    invoke-static {v1}, Lcom/mediatek/phone/UssdAlertActivity;->access$000(Lcom/mediatek/phone/UssdAlertActivity;)Lcom/android/internal/app/AlertController;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 112
    :goto_1
    return-void

    .line 106
    .end local v0    # "count":I
    :cond_0
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    goto :goto_0

    .line 110
    .restart local v0    # "count":I
    :cond_1
    iget-object v2, p0, Lcom/mediatek/phone/UssdAlertActivity$1;->this$0:Lcom/mediatek/phone/UssdAlertActivity;

    # getter for: Lcom/mediatek/phone/UssdAlertActivity;->mAlert:Lcom/android/internal/app/AlertController;
    invoke-static {v2}, Lcom/mediatek/phone/UssdAlertActivity;->access$100(Lcom/mediatek/phone/UssdAlertActivity;)Lcom/android/internal/app/AlertController;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 100
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 103
    return-void
.end method
