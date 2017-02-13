.class public Lcom/android/phone/SimCardPickDialog;
.super Ljava/lang/Object;
.source "SimCardPickDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/SimCardPickDialog$OnSimCardPickCallBack;
    }
.end annotation


# static fields
.field private static final EVENT_SELECT_SIM_EVENT:I = 0x66

.field private static final SELECT_SIM_EVENT_TIME_THRESHOLD:I = 0x3e8

.field private static final SELECT_SIM_TOTAL_TIME:I = 0x5


# instance fields
.field private final SMALL_SIM_SLOT_ICON:[I

.field private isActiveSim1:Z

.field private isActiveSim2:Z

.field private mActivity:Landroid/app/Activity;

.field private mAlertDialog:Landroid/app/Dialog;

.field mDescription1:Landroid/widget/TextView;

.field mDescription2:Landroid/widget/TextView;

.field private mDisableTextColor:I

.field mDisplayName1:Landroid/widget/TextView;

.field mDisplayName2:Landroid/widget/TextView;

.field mExtra1:Landroid/widget/TextView;

.field mExtra2:Landroid/widget/TextView;

.field mHandler:Landroid/os/Handler;

.field private mHighlightTextColor:I

.field mIcon1:Landroid/widget/ImageView;

.field mIcon2:Landroid/widget/ImageView;

.field private mIntent:Landroid/content/Intent;

.field mMarkSep1:Landroid/widget/ImageView;

.field mMarkSep2:Landroid/widget/ImageView;

.field private mNormalTextColor:I

.field private mOnSimCardPickCallBack:Lcom/android/phone/SimCardPickDialog$OnSimCardPickCallBack;

.field mSim1:Landroid/view/View;

.field mSim2:Landroid/view/View;

.field private mTitleView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/phone/OutgoingCallBroadcaster;Landroid/content/Intent;)V
    .locals 10
    .param p1, "activity"    # Lcom/android/phone/OutgoingCallBroadcaster;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/phone/SimCardPickDialog;->isActiveSim1:Z

    .line 43
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/phone/SimCardPickDialog;->isActiveSim2:Z

    .line 61
    const/4 v7, 0x2

    new-array v7, v7, [I

    fill-array-data v7, :array_0

    iput-object v7, p0, Lcom/android/phone/SimCardPickDialog;->SMALL_SIM_SLOT_ICON:[I

    .line 65
    new-instance v7, Lcom/android/phone/SimCardPickDialog$1;

    invoke-direct {v7, p0}, Lcom/android/phone/SimCardPickDialog$1;-><init>(Lcom/android/phone/SimCardPickDialog;)V

    iput-object v7, p0, Lcom/android/phone/SimCardPickDialog;->mHandler:Landroid/os/Handler;

    .line 75
    iput-object p1, p0, Lcom/android/phone/SimCardPickDialog;->mActivity:Landroid/app/Activity;

    .line 76
    iput-object p2, p0, Lcom/android/phone/SimCardPickDialog;->mIntent:Landroid/content/Intent;

    .line 77
    iget-object v7, p0, Lcom/android/phone/SimCardPickDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080013

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    iput v7, p0, Lcom/android/phone/SimCardPickDialog;->mNormalTextColor:I

    .line 78
    iget-object v7, p0, Lcom/android/phone/SimCardPickDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f08000c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    iput v7, p0, Lcom/android/phone/SimCardPickDialog;->mHighlightTextColor:I

    .line 79
    iget-object v7, p0, Lcom/android/phone/SimCardPickDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f08000d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    iput v7, p0, Lcom/android/phone/SimCardPickDialog;->mDisableTextColor:I

    .line 80
    iget-object v7, p0, Lcom/android/phone/SimCardPickDialog;->mActivity:Landroid/app/Activity;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f040011

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 81
    .local v3, "layout":Landroid/view/View;
    new-instance v0, Lmiui/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/phone/SimCardPickDialog;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v7}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 82
    .local v0, "builder":Lmiui/app/AlertDialog$Builder;
    invoke-direct {p0}, Lcom/android/phone/SimCardPickDialog;->getTitleView()Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/SimCardPickDialog;->mTitleView:Landroid/view/View;

    .line 83
    iget-object v7, p0, Lcom/android/phone/SimCardPickDialog;->mTitleView:Landroid/view/View;

    invoke-virtual {v0, v7}, Lmiui/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Lmiui/app/AlertDialog$Builder;

    .line 84
    invoke-virtual {v0, v3}, Lmiui/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiui/app/AlertDialog$Builder;

    .line 85
    const v7, 0x7f0b018c

    new-instance v8, Lcom/android/phone/SimCardPickDialog$2;

    invoke-direct {v8, p0}, Lcom/android/phone/SimCardPickDialog$2;-><init>(Lcom/android/phone/SimCardPickDialog;)V

    invoke-virtual {v0, v7, v8}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    .line 91
    new-instance v7, Lcom/android/phone/SimCardPickDialog$3;

    invoke-direct {v7, p0}, Lcom/android/phone/SimCardPickDialog$3;-><init>(Lcom/android/phone/SimCardPickDialog;)V

    invoke-virtual {v0, v7}, Lmiui/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lmiui/app/AlertDialog$Builder;

    .line 97
    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/SimCardPickDialog;->mAlertDialog:Landroid/app/Dialog;

    .line 98
    iget-object v7, p0, Lcom/android/phone/SimCardPickDialog;->mAlertDialog:Landroid/app/Dialog;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 100
    const v7, 0x7f07002a

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/SimCardPickDialog;->mSim1:Landroid/view/View;

    .line 101
    iget-object v7, p0, Lcom/android/phone/SimCardPickDialog;->mSim1:Landroid/view/View;

    const v8, 0x7f070097

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/phone/SimCardPickDialog;->mDisplayName1:Landroid/widget/TextView;

    .line 102
    iget-object v7, p0, Lcom/android/phone/SimCardPickDialog;->mSim1:Landroid/view/View;

    const v8, 0x7f070096

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/android/phone/SimCardPickDialog;->mIcon1:Landroid/widget/ImageView;

    .line 103
    iget-object v7, p0, Lcom/android/phone/SimCardPickDialog;->mSim1:Landroid/view/View;

    const v8, 0x7f070099

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/phone/SimCardPickDialog;->mDescription1:Landroid/widget/TextView;

    .line 104
    iget-object v7, p0, Lcom/android/phone/SimCardPickDialog;->mSim1:Landroid/view/View;

    const v8, 0x7f07009a

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/phone/SimCardPickDialog;->mExtra1:Landroid/widget/TextView;

    .line 105
    iget-object v7, p0, Lcom/android/phone/SimCardPickDialog;->mSim1:Landroid/view/View;

    const v8, 0x7f070098

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/android/phone/SimCardPickDialog;->mMarkSep1:Landroid/widget/ImageView;

    .line 106
    iget-object v7, p0, Lcom/android/phone/SimCardPickDialog;->mIcon1:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/android/phone/SimCardPickDialog;->SMALL_SIM_SLOT_ICON:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 108
    const v7, 0x7f07002b

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/SimCardPickDialog;->mSim2:Landroid/view/View;

    .line 109
    iget-object v7, p0, Lcom/android/phone/SimCardPickDialog;->mSim2:Landroid/view/View;

    const v8, 0x7f070097

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/phone/SimCardPickDialog;->mDisplayName2:Landroid/widget/TextView;

    .line 110
    iget-object v7, p0, Lcom/android/phone/SimCardPickDialog;->mSim2:Landroid/view/View;

    const v8, 0x7f070096

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/android/phone/SimCardPickDialog;->mIcon2:Landroid/widget/ImageView;

    .line 111
    iget-object v7, p0, Lcom/android/phone/SimCardPickDialog;->mSim2:Landroid/view/View;

    const v8, 0x7f070099

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/phone/SimCardPickDialog;->mDescription2:Landroid/widget/TextView;

    .line 112
    iget-object v7, p0, Lcom/android/phone/SimCardPickDialog;->mSim2:Landroid/view/View;

    const v8, 0x7f07009a

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/phone/SimCardPickDialog;->mExtra2:Landroid/widget/TextView;

    .line 113
    iget-object v7, p0, Lcom/android/phone/SimCardPickDialog;->mSim2:Landroid/view/View;

    const v8, 0x7f070098

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/android/phone/SimCardPickDialog;->mMarkSep2:Landroid/widget/ImageView;

    .line 114
    iget-object v7, p0, Lcom/android/phone/SimCardPickDialog;->mIcon2:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/android/phone/SimCardPickDialog;->SMALL_SIM_SLOT_ICON:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 116
    iget-object v7, p0, Lcom/android/phone/SimCardPickDialog;->mSim1:Landroid/view/View;

    new-instance v8, Lcom/android/phone/SimCardPickDialog$4;

    invoke-direct {v8, p0}, Lcom/android/phone/SimCardPickDialog$4;-><init>(Lcom/android/phone/SimCardPickDialog;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v7, p0, Lcom/android/phone/SimCardPickDialog;->mSim2:Landroid/view/View;

    new-instance v8, Lcom/android/phone/SimCardPickDialog$5;

    invoke-direct {v8, p0}, Lcom/android/phone/SimCardPickDialog$5;-><init>(Lcom/android/phone/SimCardPickDialog;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoForSlot(I)Lmiui/telephony/SubscriptionInfo;

    move-result-object v1

    .line 130
    .local v1, "info1":Lmiui/telephony/SubscriptionInfo;
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoForSlot(I)Lmiui/telephony/SubscriptionInfo;

    move-result-object v2

    .line 131
    .local v2, "info2":Lmiui/telephony/SubscriptionInfo;
    if-eqz v1, :cond_0

    .line 132
    invoke-virtual {v1}, Lmiui/telephony/SubscriptionInfo;->isActivated()Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/phone/SimCardPickDialog;->isActiveSim1:Z

    .line 134
    :cond_0
    if-eqz v2, :cond_1

    .line 135
    invoke-virtual {v2}, Lmiui/telephony/SubscriptionInfo;->isActivated()Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/phone/SimCardPickDialog;->isActiveSim2:Z

    .line 137
    :cond_1
    iget-boolean v7, p0, Lcom/android/phone/SimCardPickDialog;->isActiveSim1:Z

    if-eqz v7, :cond_2

    iget-boolean v7, p0, Lcom/android/phone/SimCardPickDialog;->isActiveSim2:Z

    if-nez v7, :cond_3

    .line 149
    :cond_2
    :goto_0
    return-void

    .line 140
    :cond_3
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, v1, v7, v8}, Lcom/android/phone/SimCardPickDialog;->setupViewBySimInfoRecord(Lmiui/telephony/SubscriptionInfo;ILjava/lang/String;)V

    .line 141
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct {p0, v2, v7, v8}, Lcom/android/phone/SimCardPickDialog;->setupViewBySimInfoRecord(Lmiui/telephony/SubscriptionInfo;ILjava/lang/String;)V

    .line 142
    const-string v7, "com.android.phone.ORIGINAL_SIM_ID"

    const-wide/16 v8, -0x1

    invoke-virtual {p2, v7, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 143
    .local v4, "simId":J
    const-wide/16 v7, -0x1

    cmp-long v7, v4, v7

    if-eqz v7, :cond_2

    .line 144
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v7

    long-to-int v8, v4

    invoke-virtual {v7, v8}, Lmiui/telephony/SubscriptionManager;->getSlotIdForSubscription(I)I

    move-result v6

    .line 145
    .local v6, "slotId":I
    if-eqz v6, :cond_4

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 146
    :cond_4
    const/4 v7, 0x5

    invoke-direct {p0, v6, v7}, Lcom/android/phone/SimCardPickDialog;->updateSimCardView(II)V

    goto :goto_0

    .line 61
    nop

    :array_0
    .array-data 4
        0x7f0200ab
        0x7f0200ac
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/phone/SimCardPickDialog;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/SimCardPickDialog;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/android/phone/SimCardPickDialog;->updateSimCardView(II)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/SimCardPickDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/SimCardPickDialog;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/phone/SimCardPickDialog;->onCancelDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/SimCardPickDialog;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/SimCardPickDialog;
    .param p1, "x1"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/android/phone/SimCardPickDialog;->onPickSimCard(I)V

    return-void
.end method

.method private closeDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 181
    iput-object v2, p0, Lcom/android/phone/SimCardPickDialog;->mSim1:Landroid/view/View;

    .line 182
    iput-object v2, p0, Lcom/android/phone/SimCardPickDialog;->mSim2:Landroid/view/View;

    .line 183
    iget-object v0, p0, Lcom/android/phone/SimCardPickDialog;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 184
    iget-object v0, p0, Lcom/android/phone/SimCardPickDialog;->mAlertDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/android/phone/SimCardPickDialog;->mAlertDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 187
    :cond_0
    iput-object v2, p0, Lcom/android/phone/SimCardPickDialog;->mAlertDialog:Landroid/app/Dialog;

    .line 188
    return-void
.end method

.method private getTitleView()Landroid/view/View;
    .locals 6

    .prologue
    .line 152
    iget-object v3, p0, Lcom/android/phone/SimCardPickDialog;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const/high16 v4, 0x7f040000

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 153
    .local v2, "titleView":Landroid/view/View;
    const v3, 0x7f070008

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 154
    .local v1, "title":Landroid/widget/TextView;
    const v3, 0x7f070009

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 155
    .local v0, "summary":Landroid/widget/TextView;
    const v3, 0x7f0b04fa

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 156
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 157
    return-object v2
.end method

.method private onCancelDialog()V
    .locals 1

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/android/phone/SimCardPickDialog;->closeDialog()V

    .line 175
    iget-object v0, p0, Lcom/android/phone/SimCardPickDialog;->mOnSimCardPickCallBack:Lcom/android/phone/SimCardPickDialog$OnSimCardPickCallBack;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/android/phone/SimCardPickDialog;->mOnSimCardPickCallBack:Lcom/android/phone/SimCardPickDialog$OnSimCardPickCallBack;

    invoke-interface {v0}, Lcom/android/phone/SimCardPickDialog$OnSimCardPickCallBack;->onCancel()V

    .line 178
    :cond_0
    return-void
.end method

.method private onPickSimCard(I)V
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/android/phone/SimCardPickDialog;->closeDialog()V

    .line 168
    iget-object v0, p0, Lcom/android/phone/SimCardPickDialog;->mOnSimCardPickCallBack:Lcom/android/phone/SimCardPickDialog$OnSimCardPickCallBack;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/android/phone/SimCardPickDialog;->mOnSimCardPickCallBack:Lcom/android/phone/SimCardPickDialog$OnSimCardPickCallBack;

    iget-object v1, p0, Lcom/android/phone/SimCardPickDialog;->mIntent:Landroid/content/Intent;

    invoke-interface {v0, p1, v1}, Lcom/android/phone/SimCardPickDialog$OnSimCardPickCallBack;->onSimCardPick(ILandroid/content/Intent;)V

    .line 171
    :cond_0
    return-void
.end method

.method private setupViewBySimInfoRecord(Lmiui/telephony/SubscriptionInfo;ILjava/lang/String;)V
    .locals 8
    .param p1, "info"    # Lmiui/telephony/SubscriptionInfo;
    .param p2, "slotId"    # I
    .param p3, "extraString"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 239
    if-nez p2, :cond_1

    .line 240
    iget-object v0, p0, Lcom/android/phone/SimCardPickDialog;->mDisplayName1:Landroid/widget/TextView;

    .line 241
    .local v0, "displayName":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/android/phone/SimCardPickDialog;->mDescription1:Landroid/widget/TextView;

    .line 242
    .local v2, "mDescription":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/phone/SimCardPickDialog;->mMarkSep1:Landroid/widget/ImageView;

    .line 243
    .local v3, "mMarkSep":Landroid/view/View;
    iget-object v1, p0, Lcom/android/phone/SimCardPickDialog;->mExtra1:Landroid/widget/TextView;

    .line 251
    .local v1, "extraView":Landroid/widget/TextView;
    :goto_0
    const/4 v5, 0x0

    .line 252
    .local v5, "showName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 253
    .local v4, "phoneNumber":Ljava/lang/String;
    if-nez p1, :cond_2

    .line 254
    const-string v5, ""

    .line 255
    const-string v4, ""

    .line 263
    :goto_1
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 268
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 273
    :goto_2
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 275
    iget v6, p0, Lcom/android/phone/SimCardPickDialog;->mHighlightTextColor:I

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 276
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 278
    :cond_0
    return-void

    .line 245
    .end local v0    # "displayName":Landroid/widget/TextView;
    .end local v1    # "extraView":Landroid/widget/TextView;
    .end local v2    # "mDescription":Landroid/widget/TextView;
    .end local v3    # "mMarkSep":Landroid/view/View;
    .end local v4    # "phoneNumber":Ljava/lang/String;
    .end local v5    # "showName":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/android/phone/SimCardPickDialog;->mDisplayName2:Landroid/widget/TextView;

    .line 246
    .restart local v0    # "displayName":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/android/phone/SimCardPickDialog;->mDescription2:Landroid/widget/TextView;

    .line 247
    .restart local v2    # "mDescription":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/phone/SimCardPickDialog;->mMarkSep2:Landroid/widget/ImageView;

    .line 248
    .restart local v3    # "mMarkSep":Landroid/view/View;
    iget-object v1, p0, Lcom/android/phone/SimCardPickDialog;->mExtra2:Landroid/widget/TextView;

    .restart local v1    # "extraView":Landroid/widget/TextView;
    goto :goto_0

    .line 257
    .restart local v4    # "phoneNumber":Ljava/lang/String;
    .restart local v5    # "showName":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Lmiui/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {p1}, Lmiui/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 258
    :goto_3
    invoke-direct {p0}, Lcom/android/phone/SimCardPickDialog;->supportsDialerLineWrap()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 259
    invoke-static {v5}, Lcom/android/phone/EllipsizeLineSpan;->getFormatString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 261
    :cond_3
    invoke-virtual {p1}, Lmiui/telephony/SubscriptionInfo;->getDisplayNumber()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 257
    :cond_4
    const-string v5, ""

    goto :goto_3

    .line 270
    :cond_5
    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method private supportsDialerLineWrap()Z
    .locals 2

    .prologue
    .line 281
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateSimCardView(II)V
    .locals 9
    .param p1, "slotId"    # I
    .param p2, "currentTime"    # I

    .prologue
    const/4 v6, 0x1

    .line 207
    iget-object v4, p0, Lcom/android/phone/SimCardPickDialog;->mSim1:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/SimCardPickDialog;->mSim2:Landroid/view/View;

    if-nez v4, :cond_1

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    const/4 v3, 0x0

    .line 211
    .local v3, "simView":Landroid/view/View;
    if-nez p1, :cond_3

    .line 212
    iget-object v3, p0, Lcom/android/phone/SimCardPickDialog;->mSim1:Landroid/view/View;

    .line 216
    :cond_2
    :goto_1
    if-gez p2, :cond_4

    if-eqz v3, :cond_4

    .line 217
    invoke-virtual {v3}, Landroid/view/View;->performClick()Z

    goto :goto_0

    .line 213
    :cond_3
    if-ne p1, v6, :cond_2

    .line 214
    iget-object v3, p0, Lcom/android/phone/SimCardPickDialog;->mSim2:Landroid/view/View;

    goto :goto_1

    .line 219
    :cond_4
    iget-object v4, p0, Lcom/android/phone/SimCardPickDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b04fb

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, "extra":Ljava/lang/String;
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoForSlot(I)Lmiui/telephony/SubscriptionInfo;

    move-result-object v1

    .line 221
    .local v1, "info":Lmiui/telephony/SubscriptionInfo;
    if-eqz v3, :cond_5

    .line 222
    invoke-direct {p0, v1, p1, v0}, Lcom/android/phone/SimCardPickDialog;->setupViewBySimInfoRecord(Lmiui/telephony/SubscriptionInfo;ILjava/lang/String;)V

    .line 224
    :cond_5
    if-ltz p2, :cond_0

    .line 225
    add-int/lit8 p2, p2, -0x1

    .line 226
    iget-object v4, p0, Lcom/android/phone/SimCardPickDialog;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x66

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 227
    .local v2, "message":Landroid/os/Message;
    iput p1, v2, Landroid/os/Message;->arg1:I

    .line 228
    iput p2, v2, Landroid/os/Message;->arg2:I

    .line 229
    iget-object v4, p0, Lcom/android/phone/SimCardPickDialog;->mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x3e8

    invoke-virtual {v4, v2, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method


# virtual methods
.method public performCancel()V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/phone/SimCardPickDialog;->mAlertDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/phone/SimCardPickDialog;->mAlertDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 164
    :cond_0
    return-void
.end method

.method public setOnSimCardPickCallBack(Lcom/android/phone/SimCardPickDialog$OnSimCardPickCallBack;)V
    .locals 0
    .param p1, "callBack"    # Lcom/android/phone/SimCardPickDialog$OnSimCardPickCallBack;

    .prologue
    .line 285
    iput-object p1, p0, Lcom/android/phone/SimCardPickDialog;->mOnSimCardPickCallBack:Lcom/android/phone/SimCardPickDialog$OnSimCardPickCallBack;

    .line 286
    return-void
.end method

.method public showSimCardPickDialog()V
    .locals 4

    .prologue
    .line 191
    iget-boolean v1, p0, Lcom/android/phone/SimCardPickDialog;->isActiveSim1:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/phone/SimCardPickDialog;->isActiveSim2:Z

    if-nez v1, :cond_3

    .line 192
    :cond_0
    iget-boolean v1, p0, Lcom/android/phone/SimCardPickDialog;->isActiveSim2:Z

    if-eqz v1, :cond_2

    .line 193
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/phone/SimCardPickDialog;->onPickSimCard(I)V

    .line 204
    :cond_1
    :goto_0
    return-void

    .line 195
    :cond_2
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/phone/SimCardPickDialog;->onPickSimCard(I)V

    goto :goto_0

    .line 198
    :cond_3
    iget-object v1, p0, Lcom/android/phone/SimCardPickDialog;->mAlertDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 199
    iget-object v1, p0, Lcom/android/phone/SimCardPickDialog;->mTitleView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 200
    iget-object v1, p0, Lcom/android/phone/SimCardPickDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0035

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 201
    .local v0, "titlePadding":I
    iget-object v1, p0, Lcom/android/phone/SimCardPickDialog;->mTitleView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/phone/SimCardPickDialog;->mTitleView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Lcom/android/phone/SimCardPickDialog;->mTitleView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {v1, v2, v0, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0
.end method
