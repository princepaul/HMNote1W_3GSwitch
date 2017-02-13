.class public Lcom/mediatek/gemini/simui/SimInfoViewUtil;
.super Ljava/lang/Object;
.source "SimInfoViewUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;
    }
.end annotation


# static fields
.field private static final NUM_WIDTH:I = 0x4

.field private static final TAG:Ljava/lang/String; = "SimInfoViewUtil"


# instance fields
.field mSimCustView:Landroid/widget/CompoundButton;

.field mSimIconView:Landroid/widget/RelativeLayout;

.field mSimIndicator:Landroid/widget/ImageView;

.field mSimName:Landroid/widget/TextView;

.field mSimNum:Landroid/widget/TextView;

.field mSimShortNum:Landroid/widget/TextView;

.field mWidgetFrame:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    return-void
.end method

.method private bindSimInfoView(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)V
    .locals 2
    .param p1, "simInfo"    # Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .prologue
    .line 70
    iget-object v0, p1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mNumber:Ljava/lang/String;

    iget v1, p1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDispalyNumberFormat:I

    invoke-direct {p0, v0, v1}, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->setSimShortNum(Ljava/lang/String;I)V

    .line 71
    iget-object v0, p1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->setSimName(Ljava/lang/String;)V

    .line 72
    iget-object v0, p1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mNumber:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->setSimNumber(Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method private setSimNumber(Ljava/lang/String;)V
    .locals 3
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 232
    const/4 v0, 0x1

    .line 233
    .local v0, "isVisible":Z
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 235
    iget-object v1, p0, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->mSimNum:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/mediatek/gemini/simui/CommonUtils;->phoneNumString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    :goto_0
    iget-object v2, p0, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->mSimNum:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 241
    return-void

    .line 237
    :cond_0
    const-string v1, "SimInfoViewUtil"

    const-string v2, "No sim item not support to call the function"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const/4 v0, 0x0

    goto :goto_0

    .line 240
    :cond_1
    const/16 v1, 0x8

    goto :goto_1
.end method

.method private setSimShortNum(Ljava/lang/String;I)V
    .locals 7
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "numberFormat"    # I

    .prologue
    const/4 v6, 0x4

    const/4 v2, 0x0

    .line 179
    const/4 v0, 0x1

    .line 180
    .local v0, "isVisible":Z
    if-eqz p1, :cond_3

    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 181
    const-string v3, "SimInfoViewUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "numberFormat = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " number = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    if-eqz p2, :cond_2

    .line 183
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v3, v6, :cond_0

    .line 185
    iget-object v3, p0, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->mSimShortNum:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/mediatek/gemini/simui/CommonUtils;->phoneNumString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    :goto_0
    iget-object v3, p0, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->mSimShortNum:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 201
    return-void

    .line 187
    :cond_0
    const/4 v3, 0x1

    if-ne p2, v3, :cond_1

    invoke-virtual {p1, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 191
    .local v1, "shortNum":Ljava/lang/String;
    :goto_2
    iget-object v3, p0, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->mSimShortNum:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/mediatek/gemini/simui/CommonUtils;->phoneNumString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 187
    .end local v1    # "shortNum":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 194
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 197
    :cond_3
    const-string v3, "SimInfoViewUtil"

    const-string v4, "No sim item not support to call the function"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const/4 v0, 0x0

    goto :goto_0

    .line 200
    :cond_4
    const/16 v2, 0x8

    goto :goto_1
.end method


# virtual methods
.method public enableView(Landroid/view/View;Z)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isEnabled"    # Z

    .prologue
    .line 219
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 220
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 221
    check-cast v1, Landroid/view/ViewGroup;

    .line 222
    .local v1, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 223
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->enableView(Landroid/view/View;Z)V

    .line 222
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 226
    .end local v0    # "i":I
    .end local v1    # "vg":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method public initViewId(Landroid/view/View;)V
    .locals 0
    .param p1, "convertView"    # Landroid/view/View;

    .prologue
    .line 48
    return-void
.end method

.method public setCustomWidget(Landroid/content/Context;Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;

    .prologue
    .line 126
    return-void
.end method

.method public setSimBackgroundColor(I)V
    .locals 5
    .param p1, "colorId"    # I

    .prologue
    .line 133
    const/4 v0, 0x1

    .line 134
    .local v0, "isVisible":Z
    if-ltz p1, :cond_1

    .line 135
    invoke-static {p1}, Lcom/mediatek/gemini/simui/CommonUtils;->getSimColorResource(I)I

    move-result v1

    .line 136
    .local v1, "resColor":I
    if-ltz v1, :cond_0

    .line 137
    iget-object v2, p0, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->mSimIconView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 146
    .end local v1    # "resColor":I
    :goto_0
    iget-object v3, p0, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->mSimIconView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 147
    return-void

    .line 139
    .restart local v1    # "resColor":I
    :cond_0
    const/4 v0, 0x0

    .line 140
    const-string v2, "SimInfoViewUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wrong colorId unable to get color for sim colorId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " resColor = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 143
    .end local v1    # "resColor":I
    :cond_1
    const/4 v0, 0x0

    .line 144
    const-string v2, "SimInfoViewUtil"

    const-string v3, "colorId < 0 not correct"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 146
    :cond_2
    const/16 v2, 0x8

    goto :goto_1
.end method

.method public setSimBackgroundColorInTheme(II)V
    .locals 5
    .param p1, "colorId"    # I
    .param p2, "themeId"    # I

    .prologue
    .line 155
    const/4 v0, 0x1

    .line 156
    .local v0, "isVisible":Z
    if-ltz p1, :cond_2

    .line 157
    const v2, 0x1030079

    if-ne p2, v2, :cond_0

    invoke-static {p1}, Lcom/mediatek/gemini/simui/CommonUtils;->getSimColorLightResource(I)I

    move-result v1

    .line 160
    .local v1, "resColor":I
    :goto_0
    if-ltz v1, :cond_1

    .line 161
    iget-object v2, p0, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->mSimIconView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 170
    .end local v1    # "resColor":I
    :goto_1
    iget-object v3, p0, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->mSimIconView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 171
    return-void

    .line 157
    :cond_0
    invoke-static {p1}, Lcom/mediatek/gemini/simui/CommonUtils;->getSimColorResource(I)I

    move-result v1

    goto :goto_0

    .line 163
    .restart local v1    # "resColor":I
    :cond_1
    const/4 v0, 0x0

    .line 164
    const-string v2, "SimInfoViewUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wrong colorId unable to get color for sim colorId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " resColor = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 167
    .end local v1    # "resColor":I
    :cond_2
    const/4 v0, 0x0

    .line 168
    const-string v2, "SimInfoViewUtil"

    const-string v3, "colorId < 0 not correct"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 170
    :cond_3
    const/16 v2, 0x8

    goto :goto_2
.end method

.method public setSimIndicatorIcon(I)V
    .locals 5
    .param p1, "indicator"    # I

    .prologue
    .line 80
    const/4 v0, 0x1

    .line 81
    .local v0, "isVisible":Z
    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    const/4 v2, 0x5

    if-ne p1, v2, :cond_1

    .line 83
    :cond_0
    const/4 v0, 0x0

    .line 84
    const-string v2, "SimInfoViewUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "indicator = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "unable to show indicator icon"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :goto_0
    iget-object v3, p0, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->mSimIndicator:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 90
    return-void

    .line 86
    :cond_1
    invoke-static {p1}, Lcom/mediatek/gemini/simui/CommonUtils;->getStatusResource(I)I

    move-result v1

    .line 87
    .local v1, "res":I
    iget-object v2, p0, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->mSimIndicator:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 89
    .end local v1    # "res":I
    :cond_2
    const/16 v2, 0x8

    goto :goto_1
.end method

.method public setSimInfoView(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)V
    .locals 1
    .param p1, "simInfo"    # Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .prologue
    .line 55
    iget v0, p1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    invoke-virtual {p0, v0}, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->setSimBackgroundColor(I)V

    .line 56
    invoke-direct {p0, p1}, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->bindSimInfoView(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)V

    .line 57
    return-void
.end method

.method public setSimInfoView(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;I)V
    .locals 1
    .param p1, "simInfo"    # Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    .param p2, "themeId"    # I

    .prologue
    .line 65
    iget v0, p1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    invoke-virtual {p0, v0, p2}, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->setSimBackgroundColorInTheme(II)V

    .line 66
    invoke-direct {p0, p1}, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->bindSimInfoView(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)V

    .line 67
    return-void
.end method

.method public setSimName(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 208
    const/4 v0, 0x1

    .line 209
    .local v0, "isVisible":Z
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 210
    iget-object v1, p0, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->mSimName:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    :goto_0
    iget-object v2, p0, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->mSimName:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 216
    return-void

    .line 212
    :cond_0
    const-string v1, "SimInfoViewUtil"

    const-string v2, "No sim item not support to call the function"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const/4 v0, 0x0

    goto :goto_0

    .line 215
    :cond_1
    const/16 v1, 0x8

    goto :goto_1
.end method
