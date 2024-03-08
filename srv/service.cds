using { RiskManagementQinZ as my } from '../db/schema';

@path : '/service/RiskManagementQinZSvcs'
service RiskManagementQinZService
{
    @odata.draft.enabled
    entity Risk as
        projection on my.Risk;

    @odata.draft.enabled
    entity Mitigations as
        projection on my.Mitigations;
}

annotate RiskManagementQinZService with @requires :
[
    'authenticated-user'
];
