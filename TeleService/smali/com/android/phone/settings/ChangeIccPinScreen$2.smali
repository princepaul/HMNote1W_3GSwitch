.class Lcom/android/phone/settings/ChangeIccPinScreen$2;
.super Ljava/lang/Object;
.source "ChangeIccPinScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/settings/ChangeIccPinScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/ChangeIccPinScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/settings/ChangeIccPinScreen;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/phone/settings/ChangeIccPinScreen$2;->this$0:Lcom/android/phone/settings/ChangeIccPinScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 13
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v12, 0x64

    .line 172
    iget-object v8, p0, Lcom/android/phone/settings/ChangeIccPinScreen$2;->this$0:Lcom/android/phone/settings/ChangeIccPinScreen;

    # getter for: Lcom/android/phone/settings/ChangeIccPinScreen;->mOldPin:Landroid/widget/EditText;
    invoke-static {v8}, Lcom/android/phone/settings/ChangeIccPinScreen;->access$100(Lcom/android/phone/settings/ChangeIccPinScreen;)Landroid/widget/EditText;

    move-result-object v8

    if-ne p1, v8, :cond_1

    .line 173
    iget-object v8, p0, Lcom/android/phone/settings/ChangeIccPinScreen$2;->this$0:Lcom/android/phone/settings/ChangeIccPinScreen;

    # getter for: Lcom/android/phone/settings/ChangeIccPinScreen;->mNewPin1:Landroid/widget/EditText;
    invoke-static {v8}, Lcom/android/phone/settings/ChangeIccPinScreen;->access$200(Lcom/android/phone/settings/ChangeIccPinScreen;)Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EditText;->requestFocus()Z

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    iget-object v8, p0, Lcom/android/phone/settings/ChangeIccPinScreen$2;->this$0:Lcom/android/phone/settings/ChangeIccPinScreen;

    # getter for: Lcom/android/phone/settings/ChangeIccPinScreen;->mNewPin1:Landroid/widget/EditText;
    invoke-static {v8}, Lcom/android/phone/settings/ChangeIccPinScreen;->access$200(Lcom/android/phone/settings/ChangeIccPinScreen;)Landroid/widget/EditText;

    move-result-object v8

    if-ne p1, v8, :cond_2

    .line 175
    iget-object v8, p0, Lcom/android/phone/settings/ChangeIccPinScreen$2;->this$0:Lcom/android/phone/settings/ChangeIccPinScreen;

    # getter for: Lcom/android/phone/settings/ChangeIccPinScreen;->mNewPin2:Landroid/widget/EditText;
    invoke-static {v8}, Lcom/android/phone/settings/ChangeIccPinScreen;->access$300(Lcom/android/phone/settings/ChangeIccPinScreen;)Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 176
    :cond_2
    iget-object v8, p0, Lcom/android/phone/settings/ChangeIccPinScreen$2;->this$0:Lcom/android/phone/settings/ChangeIccPinScreen;

    # getter for: Lcom/android/phone/settings/ChangeIccPinScreen;->mNewPin2:Landroid/widget/EditText;
    invoke-static {v8}, Lcom/android/phone/settings/ChangeIccPinScreen;->access$300(Lcom/android/phone/settings/ChangeIccPinScreen;)Landroid/widget/EditText;

    move-result-object v8

    if-ne p1, v8, :cond_3

    .line 177
    iget-object v8, p0, Lcom/android/phone/settings/ChangeIccPinScreen$2;->this$0:Lcom/android/phone/settings/ChangeIccPinScreen;

    # getter for: Lcom/android/phone/settings/ChangeIccPinScreen;->mButton:Landroid/widget/Button;
    invoke-static {v8}, Lcom/android/phone/settings/ChangeIccPinScreen;->access$400(Lcom/android/phone/settings/ChangeIccPinScreen;)Landroid/widget/Button;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Button;->requestFocus()Z

    goto :goto_0

    .line 178
    :cond_3
    iget-object v8, p0, Lcom/android/phone/settings/ChangeIccPinScreen$2;->this$0:Lcom/android/phone/settings/ChangeIccPinScreen;

    # getter for: Lcom/android/phone/settings/ChangeIccPinScreen;->mButton:Landroid/widget/Button;
    invoke-static {v8}, Lcom/android/phone/settings/ChangeIccPinScreen;->access$400(Lcom/android/phone/settings/ChangeIccPinScreen;)Landroid/widget/Button;

    move-result-object v8

    if-ne p1, v8, :cond_6

    .line 179
    iget-object v8, p0, Lcom/android/phone/settings/ChangeIccPinScreen$2;->this$0:Lcom/android/phone/settings/ChangeIccPinScreen;

    # getter for: Lcom/android/phone/settings/ChangeIccPinScreen;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v8}, Lcom/android/phone/settings/ChangeIccPinScreen;->access$500(Lcom/android/phone/settings/ChangeIccPinScreen;)Lcom/android/internal/telephony/Phone;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    .line 180
    .local v2, "iccCardInterface":Lcom/android/internal/telephony/IccCard;
    if-eqz v2, :cond_0

    .line 181
    iget-object v8, p0, Lcom/android/phone/settings/ChangeIccPinScreen$2;->this$0:Lcom/android/phone/settings/ChangeIccPinScreen;

    # getter for: Lcom/android/phone/settings/ChangeIccPinScreen;->mOldPin:Landroid/widget/EditText;
    invoke-static {v8}, Lcom/android/phone/settings/ChangeIccPinScreen;->access$100(Lcom/android/phone/settings/ChangeIccPinScreen;)Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 182
    .local v5, "oldPin":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/phone/settings/ChangeIccPinScreen$2;->this$0:Lcom/android/phone/settings/ChangeIccPinScreen;

    # getter for: Lcom/android/phone/settings/ChangeIccPinScreen;->mNewPin1:Landroid/widget/EditText;
    invoke-static {v8}, Lcom/android/phone/settings/ChangeIccPinScreen;->access$200(Lcom/android/phone/settings/ChangeIccPinScreen;)Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 183
    .local v3, "newPin1":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/phone/settings/ChangeIccPinScreen$2;->this$0:Lcom/android/phone/settings/ChangeIccPinScreen;

    # getter for: Lcom/android/phone/settings/ChangeIccPinScreen;->mNewPin2:Landroid/widget/EditText;
    invoke-static {v8}, Lcom/android/phone/settings/ChangeIccPinScreen;->access$300(Lcom/android/phone/settings/ChangeIccPinScreen;)Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 185
    .local v4, "newPin2":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/phone/settings/ChangeIccPinScreen$2;->this$0:Lcom/android/phone/settings/ChangeIccPinScreen;

    # invokes: Lcom/android/phone/settings/ChangeIccPinScreen;->validateNewPin(Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v8, v3, v4}, Lcom/android/phone/settings/ChangeIccPinScreen;->access$600(Lcom/android/phone/settings/ChangeIccPinScreen;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 187
    .local v1, "error":I
    packed-switch v1, :pswitch_data_0

    .line 207
    iget-object v8, p0, Lcom/android/phone/settings/ChangeIccPinScreen$2;->this$0:Lcom/android/phone/settings/ChangeIccPinScreen;

    # getter for: Lcom/android/phone/settings/ChangeIccPinScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/phone/settings/ChangeIccPinScreen;->access$800(Lcom/android/phone/settings/ChangeIccPinScreen;)Landroid/os/Handler;

    move-result-object v8

    invoke-static {v8, v12}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 213
    .local v0, "callBack":Landroid/os/Message;
    iget-object v8, p0, Lcom/android/phone/settings/ChangeIccPinScreen$2;->this$0:Lcom/android/phone/settings/ChangeIccPinScreen;

    # invokes: Lcom/android/phone/settings/ChangeIccPinScreen;->reset()V
    invoke-static {v8}, Lcom/android/phone/settings/ChangeIccPinScreen;->access$900(Lcom/android/phone/settings/ChangeIccPinScreen;)V

    .line 215
    iget-object v8, p0, Lcom/android/phone/settings/ChangeIccPinScreen$2;->this$0:Lcom/android/phone/settings/ChangeIccPinScreen;

    # getter for: Lcom/android/phone/settings/ChangeIccPinScreen;->mChangePin2:Z
    invoke-static {v8}, Lcom/android/phone/settings/ChangeIccPinScreen;->access$1000(Lcom/android/phone/settings/ChangeIccPinScreen;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 216
    invoke-interface {v2, v5, v3, v0}, Lcom/android/internal/telephony/IccCard;->changeIccFdnPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 190
    .end local v0    # "callBack":Landroid/os/Message;
    :pswitch_0
    iget-object v8, p0, Lcom/android/phone/settings/ChangeIccPinScreen$2;->this$0:Lcom/android/phone/settings/ChangeIccPinScreen;

    # getter for: Lcom/android/phone/settings/ChangeIccPinScreen;->mNewPin1:Landroid/widget/EditText;
    invoke-static {v8}, Lcom/android/phone/settings/ChangeIccPinScreen;->access$200(Lcom/android/phone/settings/ChangeIccPinScreen;)Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->clear()V

    .line 191
    iget-object v8, p0, Lcom/android/phone/settings/ChangeIccPinScreen$2;->this$0:Lcom/android/phone/settings/ChangeIccPinScreen;

    # getter for: Lcom/android/phone/settings/ChangeIccPinScreen;->mNewPin2:Landroid/widget/EditText;
    invoke-static {v8}, Lcom/android/phone/settings/ChangeIccPinScreen;->access$300(Lcom/android/phone/settings/ChangeIccPinScreen;)Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->clear()V

    .line 192
    iget-object v8, p0, Lcom/android/phone/settings/ChangeIccPinScreen$2;->this$0:Lcom/android/phone/settings/ChangeIccPinScreen;

    # getter for: Lcom/android/phone/settings/ChangeIccPinScreen;->mMismatchError:Landroid/widget/TextView;
    invoke-static {v8}, Lcom/android/phone/settings/ChangeIccPinScreen;->access$700(Lcom/android/phone/settings/ChangeIccPinScreen;)Landroid/widget/TextView;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 194
    iget-object v8, p0, Lcom/android/phone/settings/ChangeIccPinScreen$2;->this$0:Lcom/android/phone/settings/ChangeIccPinScreen;

    invoke-virtual {v8}, Lcom/android/phone/settings/ChangeIccPinScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 197
    .local v6, "r":Landroid/content/res/Resources;
    const/4 v8, 0x1

    if-ne v1, v8, :cond_4

    .line 198
    const v8, 0x7f0b04e5

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 203
    .local v7, "text":Ljava/lang/CharSequence;
    :goto_1
    iget-object v8, p0, Lcom/android/phone/settings/ChangeIccPinScreen$2;->this$0:Lcom/android/phone/settings/ChangeIccPinScreen;

    # getter for: Lcom/android/phone/settings/ChangeIccPinScreen;->mMismatchError:Landroid/widget/TextView;
    invoke-static {v8}, Lcom/android/phone/settings/ChangeIccPinScreen;->access$700(Lcom/android/phone/settings/ChangeIccPinScreen;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 200
    .end local v7    # "text":Ljava/lang/CharSequence;
    :cond_4
    const v8, 0x7f0b04e6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "text":Ljava/lang/CharSequence;
    goto :goto_1

    .line 219
    .end local v6    # "r":Landroid/content/res/Resources;
    .end local v7    # "text":Ljava/lang/CharSequence;
    .restart local v0    # "callBack":Landroid/os/Message;
    :cond_5
    invoke-interface {v2, v5, v3, v0}, Lcom/android/internal/telephony/IccCard;->changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 226
    .end local v0    # "callBack":Landroid/os/Message;
    .end local v1    # "error":I
    .end local v2    # "iccCardInterface":Lcom/android/internal/telephony/IccCard;
    .end local v3    # "newPin1":Ljava/lang/String;
    .end local v4    # "newPin2":Ljava/lang/String;
    .end local v5    # "oldPin":Ljava/lang/String;
    :cond_6
    iget-object v8, p0, Lcom/android/phone/settings/ChangeIccPinScreen$2;->this$0:Lcom/android/phone/settings/ChangeIccPinScreen;

    # getter for: Lcom/android/phone/settings/ChangeIccPinScreen;->mPUKCode:Landroid/widget/EditText;
    invoke-static {v8}, Lcom/android/phone/settings/ChangeIccPinScreen;->access$1100(Lcom/android/phone/settings/ChangeIccPinScreen;)Landroid/widget/EditText;

    move-result-object v8

    if-ne p1, v8, :cond_7

    .line 227
    iget-object v8, p0, Lcom/android/phone/settings/ChangeIccPinScreen$2;->this$0:Lcom/android/phone/settings/ChangeIccPinScreen;

    # getter for: Lcom/android/phone/settings/ChangeIccPinScreen;->mPUKSubmit:Landroid/widget/Button;
    invoke-static {v8}, Lcom/android/phone/settings/ChangeIccPinScreen;->access$1200(Lcom/android/phone/settings/ChangeIccPinScreen;)Landroid/widget/Button;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Button;->requestFocus()Z

    goto/16 :goto_0

    .line 228
    :cond_7
    iget-object v8, p0, Lcom/android/phone/settings/ChangeIccPinScreen$2;->this$0:Lcom/android/phone/settings/ChangeIccPinScreen;

    # getter for: Lcom/android/phone/settings/ChangeIccPinScreen;->mPUKSubmit:Landroid/widget/Button;
    invoke-static {v8}, Lcom/android/phone/settings/ChangeIccPinScreen;->access$1200(Lcom/android/phone/settings/ChangeIccPinScreen;)Landroid/widget/Button;

    move-result-object v8

    if-ne p1, v8, :cond_0

    .line 229
    iget-object v8, p0, Lcom/android/phone/settings/ChangeIccPinScreen$2;->this$0:Lcom/android/phone/settings/ChangeIccPinScreen;

    # getter for: Lcom/android/phone/settings/ChangeIccPinScreen;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v8}, Lcom/android/phone/settings/ChangeIccPinScreen;->access$500(Lcom/android/phone/settings/ChangeIccPinScreen;)Lcom/android/internal/telephony/Phone;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/settings/ChangeIccPinScreen$2;->this$0:Lcom/android/phone/settings/ChangeIccPinScreen;

    # getter for: Lcom/android/phone/settings/ChangeIccPinScreen;->mPUKCode:Landroid/widget/EditText;
    invoke-static {v9}, Lcom/android/phone/settings/ChangeIccPinScreen;->access$1100(Lcom/android/phone/settings/ChangeIccPinScreen;)Landroid/widget/EditText;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/settings/ChangeIccPinScreen$2;->this$0:Lcom/android/phone/settings/ChangeIccPinScreen;

    # getter for: Lcom/android/phone/settings/ChangeIccPinScreen;->mNewPin1:Landroid/widget/EditText;
    invoke-static {v10}, Lcom/android/phone/settings/ChangeIccPinScreen;->access$200(Lcom/android/phone/settings/ChangeIccPinScreen;)Landroid/widget/EditText;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/android/phone/settings/ChangeIccPinScreen$2;->this$0:Lcom/android/phone/settings/ChangeIccPinScreen;

    # getter for: Lcom/android/phone/settings/ChangeIccPinScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/phone/settings/ChangeIccPinScreen;->access$800(Lcom/android/phone/settings/ChangeIccPinScreen;)Landroid/os/Handler;

    move-result-object v11

    invoke-static {v11, v12}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v11

    invoke-interface {v8, v9, v10, v11}, Lcom/android/internal/telephony/IccCard;->supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 187
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
