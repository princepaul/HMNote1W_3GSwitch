.class public abstract Lcom/mediatek/calloption/InternationalDialogHandler;
.super Ljava/lang/Object;
.source "InternationalDialogHandler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;
.implements Landroid/content/DialogInterface$OnShowListener;
.implements Lcom/mediatek/calloption/InternationalCountrySelectDialogHandler$OnCountrySelectListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;
    }
.end annotation


# static fields
.field public static final DIALOG_TYPE_AREA_INPUT_SINGLE_SELECT:I = 0x6

.field public static final DIALOG_TYPE_COUNTRY_AREA_SINGLE_SELECT:I = 0x1

.field public static final DIALOG_TYPE_COUNTRY_SELECT:I = 0x3

.field public static final DIALOG_TYPE_COUNTRY_SELECT_AREA_INPUT:I = 0x4

.field public static final DIALOG_TYPE_COUNTRY_SELECT_DEFAULT_AREA_INPUT:I = 0x5

.field public static final DIALOG_TYPE_COUNTRY_SINGLE_SELECT:I = 0x2

.field public static final DIALOG_TYPE_DEFAULT_AREA_INPUT_SINGLE_SELECT:I = 0x7

.field public static final DIALOG_TYPE_INTERNATIONAL_PREFIX_CONFIRM:I = 0x0

.field private static final TAG:Ljava/lang/String; = "InternationalDialogHandler"


# instance fields
.field protected mAlertDialog:Lmiui/app/AlertDialog;

.field protected mAreaCodeDescription:Landroid/widget/TextView;

.field protected mContext:Landroid/content/Context;

.field protected mCountrySelectButton:Landroid/widget/Button;

.field protected mCountrySelectDialogHandler:Lcom/mediatek/calloption/InternationalCountrySelectDialogHandler;

.field protected mDescriptionText:Landroid/widget/TextView;

.field protected mInputAreaEditText:Landroid/widget/EditText;

.field protected mInternationalDialOption:I

.field protected mMessageNoText:Landroid/widget/TextView;

.field protected mMessageYesText:Landroid/widget/TextView;

.field protected mOriginNumberText:Landroid/widget/TextView;

.field protected mOriginSuggestNumber:Ljava/lang/String;

.field protected mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

.field protected mRadioButton1:Landroid/widget/RadioButton;

.field protected mRadioButton2:Landroid/widget/RadioButton;

.field protected mSingleGroup1:Landroid/view/ViewGroup;

.field protected mSingleGroup2:Landroid/view/ViewGroup;

.field protected mSuggestNumberText:Landroid/widget/TextView;

.field protected mTextAreaCode:Ljava/lang/String;

.field protected mTextInputCodeHere:Ljava/lang/String;

.field protected mType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IILcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I
    .param p3, "internationalDialOption"    # I
    .param p4, "prefixInfo"    # Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x1030073

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mContext:Landroid/content/Context;

    .line 117
    iput p2, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mType:I

    .line 118
    iput p3, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mInternationalDialOption:I

    .line 119
    iput-object p4, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    .line 120
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 396
    const-string v0, "InternationalDialogHandler"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 11
    .param p1, "input"    # Landroid/text/Editable;

    .prologue
    const/4 v10, 0x6

    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, -0x1

    .line 287
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 288
    const-string v5, "afterTextChanged(), input is null"

    invoke-static {v5}, Lcom/mediatek/calloption/InternationalDialogHandler;->log(Ljava/lang/String;)V

    .line 289
    iget-object v5, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mSuggestNumberText:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mOriginSuggestNumber:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    iget v5, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mType:I

    if-eq v8, v5, :cond_0

    iget v5, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mType:I

    if-eq v9, v5, :cond_0

    iget v5, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mType:I

    if-ne v10, v5, :cond_1

    iget-object v5, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mRadioButton1:Landroid/widget/RadioButton;

    invoke-virtual {v5}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 293
    :cond_0
    iget-object v5, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mAlertDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v5, v7}, Lmiui/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 294
    .local v0, "button":Landroid/widget/Button;
    if-eqz v0, :cond_1

    .line 295
    const-string v5, "afterTextChanged(), disable button"

    invoke-static {v5}, Lcom/mediatek/calloption/InternationalDialogHandler;->log(Ljava/lang/String;)V

    .line 296
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 326
    .end local v0    # "button":Landroid/widget/Button;
    :cond_1
    :goto_0
    return-void

    .line 300
    :cond_2
    const-string v5, "afterTextChanged(), input is NOT null"

    invoke-static {v5}, Lcom/mediatek/calloption/InternationalDialogHandler;->log(Ljava/lang/String;)V

    .line 301
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 302
    .local v1, "inputAreaCode":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mPrefixInfo.mPossibleAreaPrefix = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v6, v6, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mPossibleAreaPrefix:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/calloption/InternationalDialogHandler;->log(Ljava/lang/String;)V

    .line 303
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "inputAreaCode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/calloption/InternationalDialogHandler;->log(Ljava/lang/String;)V

    .line 305
    iget-object v5, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v5, v5, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mPossibleAreaPrefix:Ljava/lang/String;

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 306
    .local v3, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 307
    .local v2, "matcher":Ljava/util/regex/Matcher;
    iget-object v5, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v5, v5, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mPossibleAreaPrefix:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 308
    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 310
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "+"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v6, v6, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v6, v6, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mNumberSubscriber:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v6, v6, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mSuggestCountryISO:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 312
    .local v4, "suggestNumber":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 313
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "+"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v6, v6, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v6, v6, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mNumberSubscriber:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 315
    :cond_4
    iget-object v5, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mSuggestNumberText:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    iget v5, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mType:I

    if-eq v8, v5, :cond_5

    iget v5, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mType:I

    if-eq v9, v5, :cond_5

    iget v5, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mType:I

    if-ne v10, v5, :cond_1

    .line 319
    :cond_5
    iget-object v5, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mAlertDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v5, v7}, Lmiui/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 320
    .restart local v0    # "button":Landroid/widget/Button;
    if-eqz v0, :cond_1

    .line 321
    const-string v5, "afterTextChanged(), enable button"

    invoke-static {v5}, Lcom/mediatek/calloption/InternationalDialogHandler;->log(Ljava/lang/String;)V

    .line 322
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 330
    return-void
.end method

.method protected abstract createAreaInputSingleSelectDialogItems()Landroid/view/View;
.end method

.method protected abstract createButtonEditTextItems(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
.end method

.method protected abstract createCountryAreaSingleSelectDialogItems()Landroid/view/View;
.end method

.method protected abstract createCountrySelectAreaInputDialogItems(I)Landroid/view/View;
.end method

.method protected abstract createCountrySelectDefaultAreaInputDialogItems(I)Landroid/view/View;
.end method

.method protected abstract createCountrySelectDialogItems(I)Landroid/view/View;
.end method

.method protected abstract createCountrySingleSelectDialogItems()Landroid/view/View;
.end method

.method protected abstract createDefaultAreaInputSingleSelectDialogItems()Landroid/view/View;
.end method

.method public createDialogView()Landroid/view/View;
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 143
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 125
    :pswitch_0
    invoke-virtual {p0}, Lcom/mediatek/calloption/InternationalDialogHandler;->createPrefixConfirmDialogItems()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 127
    :pswitch_1
    invoke-virtual {p0}, Lcom/mediatek/calloption/InternationalDialogHandler;->createCountryAreaSingleSelectDialogItems()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 129
    :pswitch_2
    invoke-virtual {p0}, Lcom/mediatek/calloption/InternationalDialogHandler;->createCountrySingleSelectDialogItems()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 131
    :pswitch_3
    iget v0, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mInternationalDialOption:I

    invoke-virtual {p0, v0}, Lcom/mediatek/calloption/InternationalDialogHandler;->createCountrySelectDialogItems(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 133
    :pswitch_4
    iget v0, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mInternationalDialOption:I

    invoke-virtual {p0, v0}, Lcom/mediatek/calloption/InternationalDialogHandler;->createCountrySelectAreaInputDialogItems(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 135
    :pswitch_5
    iget v0, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mInternationalDialOption:I

    invoke-virtual {p0, v0}, Lcom/mediatek/calloption/InternationalDialogHandler;->createCountrySelectDefaultAreaInputDialogItems(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 137
    :pswitch_6
    invoke-virtual {p0}, Lcom/mediatek/calloption/InternationalDialogHandler;->createAreaInputSingleSelectDialogItems()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 139
    :pswitch_7
    invoke-virtual {p0}, Lcom/mediatek/calloption/InternationalDialogHandler;->createDefaultAreaInputSingleSelectDialogItems()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 123
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method protected abstract createEditTextSingleSelectItems(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
.end method

.method protected abstract createPrefixConfirmDialogItems()Landroid/view/View;
.end method

.method protected abstract createSingleSelectItems(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v0, v0, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectResult()Ljava/lang/String;
    .locals 2

    .prologue
    .line 337
    const-string v0, ""

    .line 339
    .local v0, "result":Ljava/lang/CharSequence;
    iget v1, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mType:I

    packed-switch v1, :pswitch_data_0

    .line 362
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 346
    :pswitch_0
    iget-object v1, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mRadioButton1:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 347
    iget-object v1, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mSuggestNumberText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 348
    :cond_1
    iget-object v1, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mRadioButton2:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 349
    iget-object v1, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mOriginNumberText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 356
    :pswitch_1
    iget-object v1, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mSuggestNumberText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 357
    goto :goto_0

    .line 339
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 180
    iget-object v1, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mSingleGroup1:Landroid/view/ViewGroup;

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mSingleGroup2:Landroid/view/ViewGroup;

    if-ne p1, v1, :cond_5

    .line 181
    :cond_0
    iget-object v1, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mSingleGroup1:Landroid/view/ViewGroup;

    if-ne p1, v1, :cond_1

    .line 182
    iget-object v1, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mRadioButton1:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 183
    iget-object v1, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mRadioButton2:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 185
    :cond_1
    iget-object v1, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mSingleGroup2:Landroid/view/ViewGroup;

    if-ne p1, v1, :cond_2

    .line 186
    iget-object v1, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mRadioButton2:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 187
    iget-object v1, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mRadioButton1:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 189
    :cond_2
    iget-object v1, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mAlertDialog:Lmiui/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lmiui/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 190
    .local v0, "button":Landroid/widget/Button;
    if-eqz v0, :cond_3

    .line 191
    const/4 v1, 0x6

    iget v2, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mType:I

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mRadioButton1:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mInputAreaEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 193
    const-string v1, "onClick(), disable button"

    invoke-static {v1}, Lcom/mediatek/calloption/InternationalDialogHandler;->log(Ljava/lang/String;)V

    .line 194
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 204
    .end local v0    # "button":Landroid/widget/Button;
    :cond_3
    :goto_0
    return-void

    .line 196
    .restart local v0    # "button":Landroid/widget/Button;
    :cond_4
    const-string v1, "onClick(), enable button"

    invoke-static {v1}, Lcom/mediatek/calloption/InternationalDialogHandler;->log(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 200
    .end local v0    # "button":Landroid/widget/Button;
    :cond_5
    iget-object v1, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mCountrySelectButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_3

    .line 202
    iget-object v1, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mCountrySelectDialogHandler:Lcom/mediatek/calloption/InternationalCountrySelectDialogHandler;

    iget-object v2, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v2, v2, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mValidCountryISOList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/mediatek/calloption/InternationalCountrySelectDialogHandler;->showCountrySelectDialog(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public onCountrySelected(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "countryISO"    # Ljava/lang/String;
    .param p2, "countryCode"    # Ljava/lang/String;
    .param p3, "countryName"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 208
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCountrySelected(), countryISO = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", countryCode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", countryName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/calloption/InternationalDialogHandler;->log(Ljava/lang/String;)V

    .line 210
    iget-object v4, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iput-object p1, v4, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mSuggestCountryISO:Ljava/lang/String;

    .line 211
    iget-object v4, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iput-object p2, v4, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mCountryCode:Ljava/lang/String;

    .line 212
    iget-object v4, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iput-object p3, v4, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mCountryName:Ljava/lang/String;

    .line 213
    iget-object v4, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v4, v4, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mNumberOrigin:Ljava/lang/String;

    iget-object v5, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v5, v5, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mSuggestCountryISO:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/mediatek/calloption/CallOptionUtils;->getNumberInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/calloption/CallOptionUtils$NumberInfo;

    move-result-object v2

    .line 215
    .local v2, "numberInfo":Lcom/mediatek/calloption/CallOptionUtils$NumberInfo;
    iget-object v4, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v5, v2, Lcom/mediatek/calloption/CallOptionUtils$NumberInfo;->mAreaCode:Ljava/lang/String;

    iput-object v5, v4, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mAreaCode:Ljava/lang/String;

    .line 216
    iget-object v4, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v5, v2, Lcom/mediatek/calloption/CallOptionUtils$NumberInfo;->mSubscriber:Ljava/lang/String;

    iput-object v5, v4, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mNumberSubscriber:Ljava/lang/String;

    .line 217
    iget-object v4, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v5, v2, Lcom/mediatek/calloption/CallOptionUtils$NumberInfo;->mAreaCodePrefix:Ljava/lang/String;

    iput-object v5, v4, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mPossibleAreaPrefix:Ljava/lang/String;

    .line 218
    iget-object v4, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v4, v4, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mAreaCode:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 219
    iget-object v4, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v5, v5, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mNumberOrigin:Ljava/lang/String;

    iget-object v6, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v6, v6, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mSuggestCountryISO:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/mediatek/calloption/CallOptionUtils;->isValidNumberForCountryISO(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 221
    iget-object v4, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v5, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v5, v5, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mSuggestCountryISO:Ljava/lang/String;

    iget-object v6, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v6, v6, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mNumberOrigin:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/mediatek/telephony/PhoneNumberUtilsEx;->isAreaCodeNeeded(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v4, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mIsAreaCodeNeeded:Z

    .line 227
    :cond_0
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mPrefixInfo = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/calloption/InternationalDialogHandler;->log(Ljava/lang/String;)V

    .line 229
    iget-object v4, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mCountrySelectButton:Landroid/widget/Button;

    if-eqz v4, :cond_1

    .line 230
    iget-object v4, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mCountrySelectButton:Landroid/widget/Button;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v6, v6, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mCountryName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "(+"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v6, v6, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 232
    :cond_1
    iget-object v4, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-boolean v4, v4, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mIsAreaCodeNeeded:Z

    if-eqz v4, :cond_6

    .line 233
    iget-object v4, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mAreaCodeDescription:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 234
    iget-object v4, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mInputAreaEditText:Landroid/widget/EditText;

    invoke-virtual {v4, v7}, Landroid/widget/EditText;->setVisibility(I)V

    .line 235
    iget-object v4, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v5, v5, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mSuggestCountryISO:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/mediatek/phone/provider/CallHistory$Calls;->getLatestAreaCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 237
    .local v1, "latestAreaCode":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 238
    iget-object v4, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mInputAreaEditText:Landroid/widget/EditText;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 239
    iget-object v4, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mInputAreaEditText:Landroid/widget/EditText;

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 240
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v5, v5, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v5, v5, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mNumberOrigin:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v5, v5, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mSuggestCountryISO:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mOriginSuggestNumber:Ljava/lang/String;

    .line 243
    iget-object v4, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mOriginSuggestNumber:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 244
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v5, v5, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v5, v5, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mNumberOrigin:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mOriginSuggestNumber:Ljava/lang/String;

    .line 246
    :cond_2
    iget-object v4, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mSuggestNumberText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mOriginSuggestNumber:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    const/4 v4, 0x4

    iput v4, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mType:I

    .line 248
    iget-object v4, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mAlertDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v4, v8}, Lmiui/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 249
    .local v0, "button":Landroid/widget/Button;
    if-eqz v0, :cond_3

    .line 250
    const-string v4, "onCountrySelected(), use latest area code, enable button"

    invoke-static {v4}, Lcom/mediatek/calloption/InternationalDialogHandler;->log(Ljava/lang/String;)V

    .line 251
    invoke-virtual {v0, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 283
    .end local v1    # "latestAreaCode":Ljava/lang/String;
    :cond_3
    :goto_1
    return-void

    .line 225
    .end local v0    # "button":Landroid/widget/Button;
    :cond_4
    iget-object v4, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iput-boolean v7, v4, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mIsAreaCodeNeeded:Z

    goto/16 :goto_0

    .line 254
    .restart local v1    # "latestAreaCode":Ljava/lang/String;
    :cond_5
    iget-object v4, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mInputAreaEditText:Landroid/widget/EditText;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 255
    iget-object v4, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mInputAreaEditText:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mTextInputCodeHere:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 256
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v5, v5, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mTextAreaCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v5, v5, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mNumberOrigin:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mOriginSuggestNumber:Ljava/lang/String;

    .line 258
    iget-object v4, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mSuggestNumberText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mOriginSuggestNumber:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    const/4 v4, 0x5

    iput v4, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mType:I

    .line 260
    iget-object v4, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mAlertDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v4, v8}, Lmiui/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 261
    .restart local v0    # "button":Landroid/widget/Button;
    if-eqz v0, :cond_3

    .line 262
    const-string v4, "onCountrySelected(), no area code, disable button"

    invoke-static {v4}, Lcom/mediatek/calloption/InternationalDialogHandler;->log(Ljava/lang/String;)V

    .line 263
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 267
    .end local v0    # "button":Landroid/widget/Button;
    .end local v1    # "latestAreaCode":Ljava/lang/String;
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v5, v5, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v5, v5, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mAreaCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v5, v5, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mNumberSubscriber:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v5, v5, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mSuggestCountryISO:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 270
    .local v3, "suggestNumber":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 271
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v5, v5, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v5, v5, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mAreaCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v5, v5, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mNumberSubscriber:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 273
    :cond_7
    iget-object v4, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mSuggestNumberText:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    iget-object v4, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mAreaCodeDescription:Landroid/widget/TextView;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 275
    iget-object v4, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mInputAreaEditText:Landroid/widget/EditText;

    invoke-virtual {v4, v10}, Landroid/widget/EditText;->setVisibility(I)V

    .line 276
    const/4 v4, 0x3

    iput v4, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mType:I

    .line 277
    iget-object v4, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mAlertDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v4, v8}, Lmiui/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 278
    .restart local v0    # "button":Landroid/widget/Button;
    if-eqz v0, :cond_3

    .line 279
    const-string v4, "onCountrySelected(), no need area code, enable button"

    invoke-static {v4}, Lcom/mediatek/calloption/InternationalDialogHandler;->log(Ljava/lang/String;)V

    .line 280
    invoke-virtual {v0, v9}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_1
.end method

.method public onHandledDialogDismiss()V
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mCountrySelectDialogHandler:Lcom/mediatek/calloption/InternationalCountrySelectDialogHandler;

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mCountrySelectDialogHandler:Lcom/mediatek/calloption/InternationalCountrySelectDialogHandler;

    invoke-virtual {v0}, Lcom/mediatek/calloption/InternationalCountrySelectDialogHandler;->dismissHandledDialog()V

    .line 393
    :cond_0
    return-void
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 375
    iget-object v1, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mAlertDialog:Lmiui/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lmiui/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 376
    .local v0, "button":Landroid/widget/Button;
    if-nez v0, :cond_0

    .line 387
    :goto_0
    return-void

    .line 379
    :cond_0
    const/4 v1, 0x4

    iget v2, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mType:I

    if-eq v1, v2, :cond_1

    const/4 v1, 0x6

    iget v2, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mType:I

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mRadioButton1:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 381
    :cond_1
    const-string v1, "onShow(), disable button"

    invoke-static {v1}, Lcom/mediatek/calloption/InternationalDialogHandler;->log(Ljava/lang/String;)V

    .line 382
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 384
    :cond_2
    const-string v1, "onShow(), enable button"

    invoke-static {v1}, Lcom/mediatek/calloption/InternationalDialogHandler;->log(Ljava/lang/String;)V

    .line 385
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "input"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "changeCount"    # I

    .prologue
    .line 334
    return-void
.end method

.method public setAlertDialog(Lmiui/app/AlertDialog;)V
    .locals 0
    .param p1, "alertDialog"    # Lmiui/app/AlertDialog;

    .prologue
    .line 370
    iput-object p1, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mAlertDialog:Lmiui/app/AlertDialog;

    .line 371
    return-void
.end method
