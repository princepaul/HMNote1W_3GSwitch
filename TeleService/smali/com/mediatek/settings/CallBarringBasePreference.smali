.class public Lcom/mediatek/settings/CallBarringBasePreference;
.super Landroid/preference/CheckBoxPreference;
.source "CallBarringBasePreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/settings/CallBarringBasePreference$MyHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field public static final DEFAULT_SIM:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "Settings/CallBarringBasePreference"

.field private static final PASSWORD_LENGTH:I = 0x4


# instance fields
.field private mCallBarringInterface:Lcom/mediatek/settings/CallBarringInterface;

.field private mContext:Landroid/content/Context;

.field private mCurrentClickState:Z

.field private mFacility:Ljava/lang/String;

.field private mHandler:Lcom/mediatek/settings/CallBarringBasePreference$MyHandler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mResult:Z

.field private mServiceClass:I

.field private mSimId:I

.field private mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

.field private mTitle:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 95
    invoke-direct {p0, p1, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    new-instance v0, Lcom/mediatek/settings/CallBarringBasePreference$MyHandler;

    invoke-direct {v0, p0, v1}, Lcom/mediatek/settings/CallBarringBasePreference$MyHandler;-><init>(Lcom/mediatek/settings/CallBarringBasePreference;Lcom/mediatek/settings/CallBarringBasePreference$1;)V

    iput-object v0, p0, Lcom/mediatek/settings/CallBarringBasePreference;->mHandler:Lcom/mediatek/settings/CallBarringBasePreference$MyHandler;

    .line 79
    iput-object v1, p0, Lcom/mediatek/settings/CallBarringBasePreference;->mContext:Landroid/content/Context;

    .line 83
    iput-boolean v2, p0, Lcom/mediatek/settings/CallBarringBasePreference;->mCurrentClickState:Z

    .line 85
    iput-object v1, p0, Lcom/mediatek/settings/CallBarringBasePreference;->mCallBarringInterface:Lcom/mediatek/settings/CallBarringInterface;

    .line 87
    iput-boolean v3, p0, Lcom/mediatek/settings/CallBarringBasePreference;->mResult:Z

    .line 90
    const/4 v0, 0x2

    iput v0, p0, Lcom/mediatek/settings/CallBarringBasePreference;->mSimId:I

    .line 92
    iput v3, p0, Lcom/mediatek/settings/CallBarringBasePreference;->mServiceClass:I

    .line 96
    invoke-virtual {p0, v2}, Lcom/mediatek/settings/CallBarringBasePreference;->setEnabled(Z)V

    .line 97
    iput-object p1, p0, Lcom/mediatek/settings/CallBarringBasePreference;->mContext:Landroid/content/Context;

    .line 98
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/CallBarringBasePreference;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 99
    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/settings/CallBarringBasePreference;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/CallBarringBasePreference;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/mediatek/settings/CallBarringBasePreference;->validatePassword(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/mediatek/settings/CallBarringBasePreference;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/CallBarringBasePreference;

    .prologue
    .line 72
    iget v0, p0, Lcom/mediatek/settings/CallBarringBasePreference;->mServiceClass:I

    return v0
.end method

.method static synthetic access$200(Lcom/mediatek/settings/CallBarringBasePreference;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/CallBarringBasePreference;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/mediatek/settings/CallBarringBasePreference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/settings/CallBarringBasePreference;)Lcom/android/phone/TimeConsumingPreferenceListener;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/CallBarringBasePreference;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/mediatek/settings/CallBarringBasePreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/settings/CallBarringBasePreference;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/CallBarringBasePreference;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/mediatek/settings/CallBarringBasePreference;->mFacility:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/settings/CallBarringBasePreference;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/CallBarringBasePreference;

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/mediatek/settings/CallBarringBasePreference;->mCurrentClickState:Z

    return v0
.end method

.method static synthetic access$600(Lcom/mediatek/settings/CallBarringBasePreference;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/CallBarringBasePreference;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/settings/CallBarringBasePreference;->setCallState(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/mediatek/settings/CallBarringBasePreference;)Lcom/mediatek/settings/CallBarringInterface;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/CallBarringBasePreference;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/mediatek/settings/CallBarringBasePreference;->mCallBarringInterface:Lcom/mediatek/settings/CallBarringInterface;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mediatek/settings/CallBarringBasePreference;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/CallBarringBasePreference;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/settings/CallBarringBasePreference;->getCallState(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$902(Lcom/mediatek/settings/CallBarringBasePreference;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/CallBarringBasePreference;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/mediatek/settings/CallBarringBasePreference;->mResult:Z

    return p1
.end method

.method private doPreferenceClick(Ljava/lang/String;)V
    .locals 9
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 141
    invoke-virtual {p0}, Lcom/mediatek/settings/CallBarringBasePreference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 142
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f04000a

    invoke-virtual {v3, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 144
    .local v4, "textEntryView":Landroid/view/View;
    const v6, 0x7f070013

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 145
    .local v1, "content":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/mediatek/settings/CallBarringBasePreference;->mContext:Landroid/content/Context;

    const v7, 0x7f0b048e

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/mediatek/settings/CallBarringBasePreference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 149
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 150
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 151
    const v6, 0x7f0b018c

    invoke-virtual {v0, v6, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 152
    const v6, 0x7f0b018f

    new-instance v7, Lcom/mediatek/settings/CallBarringBasePreference$1;

    invoke-direct {v7, p0, v4, p1}, Lcom/mediatek/settings/CallBarringBasePreference$1;-><init>(Lcom/mediatek/settings/CallBarringBasePreference;Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 181
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 183
    .local v2, "dlg":Landroid/app/AlertDialog;
    if-eqz v2, :cond_0

    .line 184
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 185
    .local v5, "window":Landroid/view/Window;
    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 186
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 190
    .end local v5    # "window":Landroid/view/Window;
    :cond_0
    return-void
.end method

.method private getCallState(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "reason"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 197
    const-string v1, "Settings/CallBarringBasePreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCallState() is called with facility is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "password is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "reason is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    if-eqz p3, :cond_0

    .line 203
    iget-object v1, p0, Lcom/mediatek/settings/CallBarringBasePreference;->mHandler:Lcom/mediatek/settings/CallBarringBasePreference$MyHandler;

    invoke-virtual {v1, v4, v4, v4, v5}, Lcom/mediatek/settings/CallBarringBasePreference$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 209
    .local v0, "m":Landroid/os/Message;
    :goto_0
    iget v1, p0, Lcom/mediatek/settings/CallBarringBasePreference;->mServiceClass:I

    const/16 v2, 0x200

    if-ne v1, v2, :cond_1

    .line 210
    iget-object v1, p0, Lcom/mediatek/settings/CallBarringBasePreference;->mPhone:Lcom/android/internal/telephony/Phone;

    iget v2, p0, Lcom/mediatek/settings/CallBarringBasePreference;->mSimId:I

    invoke-static {v1, p1, p2, v0, v2}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->getVtFacilityLock(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V

    .line 214
    :goto_1
    return-void

    .line 206
    .end local v0    # "m":Landroid/os/Message;
    :cond_0
    iget-object v1, p0, Lcom/mediatek/settings/CallBarringBasePreference;->mHandler:Lcom/mediatek/settings/CallBarringBasePreference$MyHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v4, v4, v2, v5}, Lcom/mediatek/settings/CallBarringBasePreference$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .restart local v0    # "m":Landroid/os/Message;
    goto :goto_0

    .line 212
    :cond_1
    iget-object v1, p0, Lcom/mediatek/settings/CallBarringBasePreference;->mPhone:Lcom/android/internal/telephony/Phone;

    iget v2, p0, Lcom/mediatek/settings/CallBarringBasePreference;->mSimId:I

    invoke-static {v1, p1, p2, v0, v2}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->getFacilityLock(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V

    goto :goto_1
.end method

.method private setCallState(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 6
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .param p3, "password"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 218
    const-string v0, "Settings/CallBarringBasePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCallState() is called with facility is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "password is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "enable is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v0, p0, Lcom/mediatek/settings/CallBarringBasePreference;->mHandler:Lcom/mediatek/settings/CallBarringBasePreference$MyHandler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v1, v3, v2}, Lcom/mediatek/settings/CallBarringBasePreference$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 226
    .local v4, "m":Landroid/os/Message;
    iget v0, p0, Lcom/mediatek/settings/CallBarringBasePreference;->mServiceClass:I

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    .line 227
    iget-object v0, p0, Lcom/mediatek/settings/CallBarringBasePreference;->mPhone:Lcom/android/internal/telephony/Phone;

    iget v5, p0, Lcom/mediatek/settings/CallBarringBasePreference;->mSimId:I

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->setVtFacilityLock(Lcom/android/internal/telephony/Phone;Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;I)V

    .line 231
    :goto_0
    return-void

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/mediatek/settings/CallBarringBasePreference;->mPhone:Lcom/android/internal/telephony/Phone;

    iget v5, p0, Lcom/mediatek/settings/CallBarringBasePreference;->mSimId:I

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->setFacilityLock(Lcom/android/internal/telephony/Phone;Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;I)V

    goto :goto_0
.end method

.method private validatePassword(Ljava/lang/String;)Z
    .locals 2
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 248
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method init(Lcom/android/phone/TimeConsumingPreferenceListener;ZI)V
    .locals 3
    .param p1, "listener"    # Lcom/android/phone/TimeConsumingPreferenceListener;
    .param p2, "skipReading"    # Z
    .param p3, "simId"    # I

    .prologue
    const/4 v2, 0x1

    .line 234
    iput p3, p0, Lcom/mediatek/settings/CallBarringBasePreference;->mSimId:I

    .line 236
    invoke-virtual {p0, p0}, Lcom/mediatek/settings/CallBarringBasePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 237
    iput-object p1, p0, Lcom/mediatek/settings/CallBarringBasePreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    .line 238
    if-nez p2, :cond_1

    .line 239
    iget-object v0, p0, Lcom/mediatek/settings/CallBarringBasePreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v0, :cond_0

    .line 240
    const-string v0, "Settings/CallBarringBasePreference"

    const-string v1, "init() is called"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v0, p0, Lcom/mediatek/settings/CallBarringBasePreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    invoke-interface {v0, p0, v2}, Lcom/android/phone/TimeConsumingPreferenceListener;->onStarted(Landroid/preference/Preference;Z)V

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/mediatek/settings/CallBarringBasePreference;->mFacility:Ljava/lang/String;

    const-string v1, ""

    invoke-direct {p0, v0, v1, v2}, Lcom/mediatek/settings/CallBarringBasePreference;->getCallState(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 245
    :cond_1
    return-void
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 374
    iget-boolean v0, p0, Lcom/mediatek/settings/CallBarringBasePreference;->mResult:Z

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 120
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onBindView(Landroid/view/View;)V

    .line 122
    const v1, 0x1020016

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 123
    .local v0, "titleView":Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 124
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "titleView":Landroid/view/View;
    const-string v1, "MIDDLE"

    invoke-static {v1}, Landroid/text/TextUtils$TruncateAt;->valueOf(Ljava/lang/String;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 126
    :cond_0
    return-void
.end method

.method protected onClick()V
    .locals 1

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/mediatek/settings/CallBarringBasePreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/mediatek/settings/CallBarringBasePreference;->mCurrentClickState:Z

    .line 116
    return-void

    .line 115
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/mediatek/settings/CallBarringBasePreference;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/mediatek/settings/CallBarringBasePreference;->mTitle:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/settings/CallBarringBasePreference;->doPreferenceClick(Ljava/lang/String;)V

    .line 130
    const/4 v0, 0x1

    return v0
.end method

.method public setCallState(Ljava/lang/String;)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 134
    iget-object v0, p0, Lcom/mediatek/settings/CallBarringBasePreference;->mFacility:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1}, Lcom/mediatek/settings/CallBarringBasePreference;->setCallState(Ljava/lang/String;ZLjava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/mediatek/settings/CallBarringBasePreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/mediatek/settings/CallBarringBasePreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    invoke-interface {v0, p0, v1}, Lcom/android/phone/TimeConsumingPreferenceListener;->onStarted(Landroid/preference/Preference;Z)V

    .line 138
    :cond_0
    return-void
.end method

.method public setRefreshInterface(Lcom/mediatek/settings/CallBarringInterface;)V
    .locals 0
    .param p1, "i"    # Lcom/mediatek/settings/CallBarringInterface;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/mediatek/settings/CallBarringBasePreference;->mCallBarringInterface:Lcom/mediatek/settings/CallBarringInterface;

    .line 103
    return-void
.end method

.method public setServiceClass(I)V
    .locals 0
    .param p1, "serviceClass"    # I

    .prologue
    .line 378
    iput p1, p0, Lcom/mediatek/settings/CallBarringBasePreference;->mServiceClass:I

    .line 379
    return-void
.end method

.method public setmFacility(Ljava/lang/String;)V
    .locals 0
    .param p1, "facility"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/mediatek/settings/CallBarringBasePreference;->mFacility:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setmTitle(I)V
    .locals 0
    .param p1, "title"    # I

    .prologue
    .line 106
    iput p1, p0, Lcom/mediatek/settings/CallBarringBasePreference;->mTitle:I

    .line 107
    return-void
.end method
