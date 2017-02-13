.class public abstract Lcom/mediatek/calloption/SimPickerAdapter;
.super Landroid/widget/BaseAdapter;
.source "SimPickerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/calloption/SimPickerAdapter$ItemHolder;,
        Lcom/mediatek/calloption/SimPickerAdapter$ViewHolder;
    }
.end annotation


# static fields
.field public static final ITEM_TYPE_ACCOUNT:I = 0x3

.field public static final ITEM_TYPE_INTERNET:I = 0x1

.field public static final ITEM_TYPE_SIM:I = 0x0

.field public static final ITEM_TYPE_TEXT:I = 0x2

.field public static final ITEM_TYPE_UNKNOWN:I = -0x1

.field private static final NUMBER_LENGTH_MINUS:I = 0x4

.field private static final VIEW_TYPE_COUNT:I = 0x4


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mIsMultiSim:Z

.field protected mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/calloption/SimPickerAdapter$ItemHolder;",
            ">;"
        }
    .end annotation
.end field

.field protected mSuggestedSimId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;JZ)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "suggestedSimId"    # J
    .param p4, "isMultiSim"    # Z

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 68
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x103006e

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/mediatek/calloption/SimPickerAdapter;->mContext:Landroid/content/Context;

    .line 69
    iput-wide p2, p0, Lcom/mediatek/calloption/SimPickerAdapter;->mSuggestedSimId:J

    .line 71
    iput-boolean p4, p0, Lcom/mediatek/calloption/SimPickerAdapter;->mIsMultiSim:Z

    .line 72
    return-void
.end method


# virtual methods
.method protected abstract createView(Lcom/mediatek/calloption/SimPickerAdapter$ViewHolder;I)Landroid/view/View;
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/calloption/SimPickerAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 103
    iget-object v1, p0, Lcom/mediatek/calloption/SimPickerAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/calloption/SimPickerAdapter$ItemHolder;

    .line 104
    .local v0, "itemHolder":Lcom/mediatek/calloption/SimPickerAdapter$ItemHolder;
    iget v1, v0, Lcom/mediatek/calloption/SimPickerAdapter$ItemHolder;->mType:I

    if-nez v1, :cond_0

    .line 105
    iget-object v1, v0, Lcom/mediatek/calloption/SimPickerAdapter$ItemHolder;->mData:Ljava/lang/Object;

    check-cast v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iget v1, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 111
    :goto_0
    return-object v1

    .line 106
    :cond_0
    iget v1, v0, Lcom/mediatek/calloption/SimPickerAdapter$ItemHolder;->mType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 107
    const/4 v1, -0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 108
    :cond_1
    iget v1, v0, Lcom/mediatek/calloption/SimPickerAdapter$ItemHolder;->mType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    iget v1, v0, Lcom/mediatek/calloption/SimPickerAdapter$ItemHolder;->mType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 109
    :cond_2
    iget-object v1, v0, Lcom/mediatek/calloption/SimPickerAdapter$ItemHolder;->mData:Ljava/lang/Object;

    goto :goto_0

    .line 111
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 116
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 98
    iget-object v1, p0, Lcom/mediatek/calloption/SimPickerAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/calloption/SimPickerAdapter$ItemHolder;

    .line 99
    .local v0, "itemHolder":Lcom/mediatek/calloption/SimPickerAdapter$ItemHolder;
    iget v1, v0, Lcom/mediatek/calloption/SimPickerAdapter$ItemHolder;->mType:I

    return v1
.end method

.method protected getSimStatusIcon(I)I
    .locals 6
    .param p1, "slot"    # I

    .prologue
    .line 194
    const-string v5, "phone"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 196
    .local v1, "iTel":Lcom/android/internal/telephony/ITelephony;
    const-string v5, "phoneEx"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/common/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/telephony/ITelephonyEx;

    move-result-object v2

    .line 198
    .local v2, "iTelEx":Lcom/mediatek/common/telephony/ITelephonyEx;
    if-nez v1, :cond_0

    .line 199
    const/4 v3, 0x0

    .line 239
    :goto_0
    return v3

    .line 202
    :cond_0
    const/4 v4, -0x1

    .line 204
    .local v4, "state":I
    :try_start_0
    iget-boolean v5, p0, Lcom/mediatek/calloption/SimPickerAdapter;->mIsMultiSim:Z

    if-eqz v5, :cond_1

    .line 205
    invoke-interface {v2, p1}, Lcom/mediatek/common/telephony/ITelephonyEx;->getSimIndicatorState(I)I

    move-result v4

    .line 213
    :goto_1
    const/4 v3, 0x0

    .line 214
    .local v3, "resourceId":I
    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 219
    :pswitch_1
    const v3, 0x202010c

    .line 220
    goto :goto_0

    .line 207
    .end local v3    # "resourceId":I
    :cond_1
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getSimIndicatorState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    goto :goto_1

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 216
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v3    # "resourceId":I
    :pswitch_2
    const v3, 0x20200f9

    .line 217
    goto :goto_0

    .line 222
    :pswitch_3
    const v3, 0x2020111

    .line 223
    goto :goto_0

    .line 225
    :pswitch_4
    const v3, 0x2020113

    .line 226
    goto :goto_0

    .line 228
    :pswitch_5
    const v3, 0x20200f2

    .line 229
    goto :goto_0

    .line 231
    :pswitch_6
    const v3, 0x20200e9

    .line 232
    goto :goto_0

    .line 234
    :pswitch_7
    const v3, 0x2020112

    .line 235
    goto :goto_0

    .line 214
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 120
    move-object v5, p2

    .line 121
    .local v5, "view":Landroid/view/View;
    const/4 v1, 0x0

    .line 122
    .local v1, "holder":Lcom/mediatek/calloption/SimPickerAdapter$ViewHolder;
    invoke-virtual {p0, p1}, Lcom/mediatek/calloption/SimPickerAdapter;->getItemViewType(I)I

    move-result v6

    .line 123
    .local v6, "viewType":I
    if-nez v5, :cond_0

    .line 124
    new-instance v1, Lcom/mediatek/calloption/SimPickerAdapter$ViewHolder;

    .end local v1    # "holder":Lcom/mediatek/calloption/SimPickerAdapter$ViewHolder;
    invoke-direct {v1, p0}, Lcom/mediatek/calloption/SimPickerAdapter$ViewHolder;-><init>(Lcom/mediatek/calloption/SimPickerAdapter;)V

    .line 125
    .restart local v1    # "holder":Lcom/mediatek/calloption/SimPickerAdapter$ViewHolder;
    invoke-virtual {p0, v1, v6}, Lcom/mediatek/calloption/SimPickerAdapter;->createView(Lcom/mediatek/calloption/SimPickerAdapter$ViewHolder;I)Landroid/view/View;

    move-result-object v5

    .line 126
    invoke-virtual {v5, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 129
    :cond_0
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "holder":Lcom/mediatek/calloption/SimPickerAdapter$ViewHolder;
    check-cast v1, Lcom/mediatek/calloption/SimPickerAdapter$ViewHolder;

    .line 131
    .restart local v1    # "holder":Lcom/mediatek/calloption/SimPickerAdapter$ViewHolder;
    if-nez v6, :cond_6

    .line 132
    iget-object v7, p0, Lcom/mediatek/calloption/SimPickerAdapter;->mItems:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mediatek/calloption/SimPickerAdapter$ItemHolder;

    iget-object v3, v7, Lcom/mediatek/calloption/SimPickerAdapter$ItemHolder;->mData:Ljava/lang/Object;

    check-cast v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 133
    .local v3, "simInfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    iget-object v7, v1, Lcom/mediatek/calloption/SimPickerAdapter$ViewHolder;->mDisplayName:Landroid/widget/TextView;

    iget-object v8, v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v7, v1, Lcom/mediatek/calloption/SimPickerAdapter$ViewHolder;->mSimIcon:Landroid/view/View;

    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v8

    iget v9, v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    invoke-virtual {v8, v9}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimBackgroundLightResByColorId(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundResource(I)V

    .line 137
    iget-wide v7, v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    iget-wide v9, p0, Lcom/mediatek/calloption/SimPickerAdapter;->mSuggestedSimId:J

    cmp-long v7, v7, v9

    if-nez v7, :cond_2

    .line 138
    iget-object v7, v1, Lcom/mediatek/calloption/SimPickerAdapter$ViewHolder;->mSuggested:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 143
    :goto_0
    const-string v2, ""

    .line 144
    .local v2, "shortNumber":Ljava/lang/String;
    iget-object v7, v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mNumber:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 145
    iget v7, v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDispalyNumberFormat:I

    packed-switch v7, :pswitch_data_0

    .line 167
    :goto_1
    iget-object v7, v1, Lcom/mediatek/calloption/SimPickerAdapter$ViewHolder;->mPhoneNumber:Landroid/widget/TextView;

    iget-object v8, v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v7, v1, Lcom/mediatek/calloption/SimPickerAdapter$ViewHolder;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 172
    :goto_2
    iget-object v7, v1, Lcom/mediatek/calloption/SimPickerAdapter$ViewHolder;->mShortPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v7, v1, Lcom/mediatek/calloption/SimPickerAdapter$ViewHolder;->mSimSignal:Landroid/widget/TextView;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 174
    iget-object v7, v1, Lcom/mediatek/calloption/SimPickerAdapter$ViewHolder;->mSimStatus:Landroid/widget/ImageView;

    iget v8, v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-virtual {p0, v8}, Lcom/mediatek/calloption/SimPickerAdapter;->getSimStatusIcon(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 188
    .end local v2    # "shortNumber":Ljava/lang/String;
    .end local v3    # "simInfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_1
    :goto_3
    return-object v5

    .line 140
    .restart local v3    # "simInfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_2
    iget-object v7, v1, Lcom/mediatek/calloption/SimPickerAdapter$ViewHolder;->mSuggested:Landroid/widget/ImageView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 147
    .restart local v2    # "shortNumber":Ljava/lang/String;
    :pswitch_0
    iget-object v7, v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x4

    if-gt v7, v8, :cond_3

    .line 148
    iget-object v2, v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mNumber:Ljava/lang/String;

    goto :goto_1

    .line 150
    :cond_3
    iget-object v7, v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mNumber:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x4

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 152
    goto :goto_1

    .line 154
    :pswitch_1
    iget-object v7, v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x4

    if-gt v7, v8, :cond_4

    .line 155
    iget-object v2, v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mNumber:Ljava/lang/String;

    goto :goto_1

    .line 157
    :cond_4
    iget-object v7, v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mNumber:Ljava/lang/String;

    iget-object v8, v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x4

    iget-object v9, v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 160
    goto :goto_1

    .line 162
    :pswitch_2
    const-string v2, ""

    .line 163
    goto :goto_1

    .line 170
    :cond_5
    iget-object v7, v1, Lcom/mediatek/calloption/SimPickerAdapter$ViewHolder;->mPhoneNumber:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 176
    .end local v2    # "shortNumber":Ljava/lang/String;
    .end local v3    # "simInfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_6
    const/4 v7, 0x1

    if-ne v6, v7, :cond_7

    .line 177
    iget-object v7, v1, Lcom/mediatek/calloption/SimPickerAdapter$ViewHolder;->mInternetIcon:Landroid/widget/ImageView;

    const v8, 0x20200e0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_3

    .line 180
    :cond_7
    const/4 v7, 0x2

    if-ne v6, v7, :cond_8

    .line 181
    iget-object v7, p0, Lcom/mediatek/calloption/SimPickerAdapter;->mItems:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mediatek/calloption/SimPickerAdapter$ItemHolder;

    iget-object v4, v7, Lcom/mediatek/calloption/SimPickerAdapter$ItemHolder;->mData:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 182
    .local v4, "text":Ljava/lang/String;
    iget-object v7, v1, Lcom/mediatek/calloption/SimPickerAdapter$ViewHolder;->mText:Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 183
    .end local v4    # "text":Ljava/lang/String;
    :cond_8
    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    .line 184
    iget-object v7, p0, Lcom/mediatek/calloption/SimPickerAdapter;->mItems:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mediatek/calloption/SimPickerAdapter$ItemHolder;

    iget-object v0, v7, Lcom/mediatek/calloption/SimPickerAdapter$ItemHolder;->mData:Ljava/lang/Object;

    check-cast v0, Landroid/accounts/Account;

    .line 185
    .local v0, "account":Landroid/accounts/Account;
    iget-object v7, v1, Lcom/mediatek/calloption/SimPickerAdapter$ViewHolder;->mText:Landroid/widget/TextView;

    iget-object v8, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 145
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x4

    return v0
.end method

.method public setItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/calloption/SimPickerAdapter$ItemHolder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/calloption/SimPickerAdapter$ItemHolder;>;"
    iput-object p1, p0, Lcom/mediatek/calloption/SimPickerAdapter;->mItems:Ljava/util/List;

    .line 83
    return-void
.end method
