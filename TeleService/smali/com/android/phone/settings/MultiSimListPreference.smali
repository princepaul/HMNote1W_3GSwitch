.class public Lcom/android/phone/settings/MultiSimListPreference;
.super Landroid/preference/ListPreference;
.source "MultiSimListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter;
    }
.end annotation


# static fields
.field public static final DO_NOT_SET:I

.field private static final SIM_SLOT_1_RADIO_ON:I = 0x1

.field private static final SIM_SLOT_2_RADIO_ON:I = 0x2

.field private static final SMALL_SIM_SLOT_ICON:[I


# instance fields
.field private mClickedDialogEntryIndex:I

.field private mHasDoNotSet:Z

.field private mMultiSimAdapter:Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter;

.field private mSimInfoRecordList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmiui/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscriptionManager:Lmiui/telephony/SubscriptionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    sget v0, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    sput v0, Lcom/android/phone/settings/MultiSimListPreference;->DO_NOT_SET:I

    .line 38
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/phone/settings/MultiSimListPreference;->SMALL_SIM_SLOT_ICON:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0200b9
        0x7f0200ba
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/settings/MultiSimListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    sget-object v1, Lcom/android/phone/R$styleable;->MultiSimListPreference:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 56
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/settings/MultiSimListPreference;->mHasDoNotSet:Z

    .line 57
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 59
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/settings/MultiSimListPreference;->mSubscriptionManager:Lmiui/telephony/SubscriptionManager;

    .line 60
    new-instance v1, Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter;

    invoke-direct {v1, p0, p1}, Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter;-><init>(Lcom/android/phone/settings/MultiSimListPreference;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/phone/settings/MultiSimListPreference;->mMultiSimAdapter:Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter;

    .line 62
    invoke-direct {p0}, Lcom/android/phone/settings/MultiSimListPreference;->createValues()V

    .line 63
    return-void
.end method

.method static synthetic access$002(Lcom/android/phone/settings/MultiSimListPreference;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/MultiSimListPreference;
    .param p1, "x1"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/android/phone/settings/MultiSimListPreference;->mClickedDialogEntryIndex:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/phone/settings/MultiSimListPreference;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/MultiSimListPreference;

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/android/phone/settings/MultiSimListPreference;->mHasDoNotSet:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/phone/settings/MultiSimListPreference;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/MultiSimListPreference;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/phone/settings/MultiSimListPreference;->mSimInfoRecordList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/settings/MultiSimListPreference;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/MultiSimListPreference;
    .param p1, "x1"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/phone/settings/MultiSimListPreference;->isRadioInOn(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500()[I
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/android/phone/settings/MultiSimListPreference;->SMALL_SIM_SLOT_ICON:[I

    return-object v0
.end method

.method private createValues()V
    .locals 7

    .prologue
    .line 99
    const/4 v1, 0x0

    .line 100
    .local v1, "simCount":I
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v5

    invoke-virtual {v5}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoList()Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/settings/MultiSimListPreference;->mSimInfoRecordList:Ljava/util/List;

    .line 102
    iget-object v5, p0, Lcom/android/phone/settings/MultiSimListPreference;->mSimInfoRecordList:Ljava/util/List;

    if-eqz v5, :cond_0

    .line 103
    iget-object v5, p0, Lcom/android/phone/settings/MultiSimListPreference;->mSimInfoRecordList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    .line 106
    :cond_0
    const/4 v4, 0x0

    .line 108
    .local v4, "values":[Ljava/lang/String;
    iget-boolean v5, p0, Lcom/android/phone/settings/MultiSimListPreference;->mHasDoNotSet:Z

    if-eqz v5, :cond_1

    .line 109
    add-int/lit8 v5, v1, 0x1

    new-array v4, v5, [Ljava/lang/String;

    .line 110
    const/4 v5, 0x0

    sget v6, Lcom/android/phone/settings/MultiSimListPreference;->DO_NOT_SET:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 111
    const/4 v2, 0x1

    .line 117
    .local v2, "simIndex":I
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    move v3, v2

    .end local v2    # "simIndex":I
    .local v3, "simIndex":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 118
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "simIndex":I
    .restart local v2    # "simIndex":I
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    .line 117
    add-int/lit8 v0, v0, 0x1

    move v3, v2

    .end local v2    # "simIndex":I
    .restart local v3    # "simIndex":I
    goto :goto_1

    .line 113
    .end local v0    # "i":I
    .end local v3    # "simIndex":I
    :cond_1
    new-array v4, v1, [Ljava/lang/String;

    .line 114
    const/4 v2, 0x0

    .restart local v2    # "simIndex":I
    goto :goto_0

    .line 120
    .end local v2    # "simIndex":I
    .restart local v0    # "i":I
    .restart local v3    # "simIndex":I
    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/phone/settings/MultiSimListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 121
    return-void
.end method

.method private isRadioInOn(I)Z
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/android/phone/settings/MultiSimListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/android/phone/settings/MultiSimListPreference;->isRadioOff(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    const/4 v0, 0x0

    .line 134
    :goto_0
    return v0

    .line 127
    :cond_0
    const/4 v0, 0x0

    .line 129
    .local v0, "isRadioInOn":Z
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v1, p1}, Lcom/android/phone/PhoneInterfaceManager;->isRadioOnGemini(I)Z

    move-result v0

    .line 134
    goto :goto_0
.end method

.method private isRadioOff(Landroid/content/Context;I)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "slot"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 138
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "dual_sim_mode_setting"

    const/4 v5, -0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 140
    .local v0, "dualSimMode":I
    if-nez p2, :cond_2

    .line 141
    and-int/lit8 v3, v0, 0x1

    if-nez v3, :cond_1

    .line 143
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 141
    goto :goto_0

    .line 143
    :cond_2
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method


# virtual methods
.method public notifySimInfoDataChanged()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/phone/settings/MultiSimListPreference;->createValues()V

    .line 96
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 3
    .param p1, "positiveResult"    # Z

    .prologue
    .line 84
    if-eqz p1, :cond_0

    iget v1, p0, Lcom/android/phone/settings/MultiSimListPreference;->mClickedDialogEntryIndex:I

    if-ltz v1, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/android/phone/settings/MultiSimListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/settings/MultiSimListPreference;->mClickedDialogEntryIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/phone/settings/MultiSimListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 87
    invoke-virtual {p0, v0}, Lcom/android/phone/settings/MultiSimListPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    invoke-virtual {p0, v0}, Lcom/android/phone/settings/MultiSimListPreference;->setValue(Ljava/lang/String;)V

    .line 92
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 4
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    const/4 v3, 0x0

    .line 67
    invoke-virtual {p0}, Lcom/android/phone/settings/MultiSimListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/MultiSimListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/phone/settings/MultiSimListPreference;->mClickedDialogEntryIndex:I

    .line 68
    iget-object v0, p0, Lcom/android/phone/settings/MultiSimListPreference;->mMultiSimAdapter:Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter;

    iget v1, p0, Lcom/android/phone/settings/MultiSimListPreference;->mClickedDialogEntryIndex:I

    new-instance v2, Lcom/android/phone/settings/MultiSimListPreference$1;

    invoke-direct {v2, p0}, Lcom/android/phone/settings/MultiSimListPreference$1;-><init>(Lcom/android/phone/settings/MultiSimListPreference;)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 79
    invoke-virtual {p1, v3, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 80
    return-void
.end method
